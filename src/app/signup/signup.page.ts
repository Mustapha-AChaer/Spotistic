import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import {SignupService} from '../signup.service';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.page.html',
  styleUrls: ['./signup.page.scss'],
})
export class SignupPage implements OnInit {

  constructor(private service: SignupService) { }

  ngOnInit() {
  }

  onSubmit(form : NgForm){
    console.log(form.value);
    let user = form.value;
    this.service.createUser(user).subscribe(response =>{
      console.log(response);
    })
  }

}
