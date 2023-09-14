// SPDX-License-Identifier: Onther
pragma solidity >=0.4.22 <0.9.0;

contract TrafficLight {
   // 신호등의 상태를 나타내는 열거형 정의
    enum LightState {
        Red,
        Green,
        Yellow
    }
    
   // 현재 신호등 상태를 저장하는 함수
   LightState public currentLight;

   // 생성자에서 초기 상태를 설정
   constructor() {
       currentLight = LightState.Red;
   }

   // 신호등 상태를 변경하는 함수
   function changeLight(LightState _newState) public {
       require(_newState != currentLight, "New state");
       currentLight = _newState;
   }
}
