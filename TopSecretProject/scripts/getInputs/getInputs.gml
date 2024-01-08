function getInputs(){

keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyJump = keyboard_check_pressed(vk_space);
keyJumpRel = keyboard_check_released(vk_space);
keySprint = keyboard_check(vk_shift);
keyAttack = mouse_check_button_pressed(mb_left);
keyDefend = mouse_check_button(mb_right);
keyUse = keyboard_check_pressed(ord("E"));

}