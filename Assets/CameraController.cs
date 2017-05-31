using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Camera))]
public class CameraController : MonoBehaviour {

    public Transform player;
    public float verticalDistance = 10f;
    public float backDistance = 4f;

    // Update is called once per frame
    void Update () {
        transform.position = player.position + (Vector3.up * verticalDistance) + (Vector3.back * backDistance);
	}
}
