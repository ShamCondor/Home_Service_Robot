// Auto-generated. Do not edit!

// (in-package add_markers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PositionActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionActionRequest
    // Serialize message field [action]
    bufferOffset = _serializer.uint32(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionActionRequest
    let len;
    let data = new PositionActionRequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'add_markers/PositionActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5565ed6f692a31cd1607bc66d8256ac3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionActionRequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    return resolved;
    }
};

class PositionActionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('msg_feedback')) {
        this.msg_feedback = initObj.msg_feedback
      }
      else {
        this.msg_feedback = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionActionResponse
    // Serialize message field [msg_feedback]
    bufferOffset = _serializer.string(obj.msg_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionActionResponse
    let len;
    let data = new PositionActionResponse(null);
    // Deserialize message field [msg_feedback]
    data.msg_feedback = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg_feedback.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'add_markers/PositionActionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2897a4bc4d7ca330e430870cfdee7314';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string msg_feedback
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionActionResponse(null);
    if (msg.msg_feedback !== undefined) {
      resolved.msg_feedback = msg.msg_feedback;
    }
    else {
      resolved.msg_feedback = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: PositionActionRequest,
  Response: PositionActionResponse,
  md5sum() { return '4980732f18a499f52b643a6dd94ab4b6'; },
  datatype() { return 'add_markers/PositionAction'; }
};
