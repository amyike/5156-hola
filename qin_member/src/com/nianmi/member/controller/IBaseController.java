package com.nianmi.member.controller;

import org.springframework.ui.Model;

interface IBaseController {

	/**
	 * index
	 * 
	 * @param model
	 * @param name
	 * @return
	 */
	String index(Model model, String name);

	/**
	 * list
	 * 
	 * @param model
	 * @param name
	 * @return
	 */
	String list(Model model, String name);

	/**
	 * 
	 * @param model
	 * @param name
	 * @return
	 */
	String insert(Model model, String name);

	/**
	 * insert
	 * 
	 * @param model
	 * @param name
	 * @return
	 */
	String delete(Model model, String name);

	/**
	 * update
	 * 
	 * @param model
	 * @param name
	 * @return
	 */
	String update(Model model, String name);

}
