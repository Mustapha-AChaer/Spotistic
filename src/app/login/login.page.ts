import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router } from '@angular/router';
import { LoginService } from '../login.service';
import { Resp } from '../login.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {
  resp : Resp[];

  constructor(private service : LoginService, private router: Router) { }

  ngOnInit() {
  }

  onSubmit(form: NgForm){
    let user = form.value;
    //console.log(user);
    this.service.sendInfo(user).subscribe(response =>{
     this.resp = response;
     console.log(this.resp);

     if(this.resp){
       this.router.navigate(["/main-page"]);
     }else{
       console.log("we are here");
       document.getElementById("error").style.visibility = "visible";
     }
    });
  }
}
