using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

    private List<Material> sponges;

    public Material sponge;
    public float speed = 5f;
    public float jumpForce = 600f;
    public float lerpSpeed = 0.005f;

    private Rigidbody r;
    private List<Cloud> lerpingMaterials;
    private float curLerpVal;

    public class Cloud {
        public Material mat;
        public float lerpTo;

        public Cloud(Material _mat, float _lerpTo) {
            mat = _mat;
            lerpTo = _lerpTo;
        }
    }

	// Use this for initialization
	void Start () {
        r = GetComponent<Rigidbody>();

        lerpingMaterials = new List<Cloud>();

        sponges = new List<Material>();

        GameObject[] spongyObjects = GameObject.FindGameObjectsWithTag("Spongy");
        for (int i = 0; i < spongyObjects.Length; i++) {
            sponges.Add(spongyObjects[i].GetComponent<MeshRenderer>().material);
        }
	}
	
	// Update is called once per frame
	void Update () {
        r.MovePosition(r.position + new Vector3(Input.GetAxisRaw("Horizontal")*Time.deltaTime * speed, 0, Input.GetAxisRaw("Vertical")* Time.deltaTime * speed));

        if (Input.GetKeyDown(KeyCode.Space)) {
            r.AddForce(Vector3.up * jumpForce);
        }

        //sponge.SetVector("_TouchPoint", new Vector4(r.position.x, r.position.y, r.position.z, 0f));

		/*
        if (lerpingMaterials.Count > 0) {
            for (int i = 0; i < lerpingMaterials.Count; i++) {
                curLerpVal = lerpingMaterials[i].mat.GetFloat("_LerpValue");
                if (curLerpVal > 1f) {
                    lerpingMaterials[i].mat.SetFloat("_LerpValue", 1f);
                    lerpingMaterials.RemoveAt(i);
                    i--;
                } else if (curLerpVal < 0f) {
                    lerpingMaterials[i].mat.SetFloat("_LerpValue", 0f);
                    lerpingMaterials.RemoveAt(i);
                    i--;
                } else {
                    if (lerpingMaterials[i].lerpTo == 1f) {
                        lerpingMaterials[i].mat.SetFloat("_LerpValue", curLerpVal + lerpSpeed);
                    } else if (lerpingMaterials[i].lerpTo == 0f) {
                        lerpingMaterials[i].mat.SetFloat("_LerpValue", curLerpVal - lerpSpeed);
                    }
                }
            }
        }*/

        for (int i = 0; i < sponges.Count; i++) {
            sponges[i].SetVector("_TouchPoint", new Vector4(r.position.x, r.position.y, r.position.z, 0f));
        }
	}

    private void OnCollisionEnter(Collision collision) {
        MeshRenderer mesh = collision.gameObject.GetComponent<MeshRenderer>();
        if (mesh != null) {
            //lerpingMaterials.Add(new Cloud(mesh.material, 0f));
        }
    }

    private void OnCollisionStay(Collision collision) {
        MeshRenderer mesh = collision.gameObject.GetComponent<MeshRenderer>();
        if (mesh != null) {
            //mesh.material.SetVector("_TouchPoint", new Vector4(r.position.x, r.position.y, r.position.z, 0f));
        }
    }

    private void OnCollisionExit(Collision collision) {
        MeshRenderer mesh = collision.gameObject.GetComponent<MeshRenderer>();
        if (mesh != null) {
            //lerpingMaterials.Add(new Cloud(mesh.material, 1f));
        }
    }
}
