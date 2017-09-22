.class public Lcom/android/vendorsettings/users/EditUserInfoController;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"


# instance fields
.field private atC:Landroid/app/Dialog;

.field private atD:Landroid/graphics/Bitmap;

.field private atE:Lcom/android/vendorsettings/users/EditUserPhotoController;

.field private atF:Z

.field private atb:Landroid/os/UserHandle;

.field private sR:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atF:Z

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/users/EditUserInfoController;)Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atb:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/users/EditUserInfoController;)Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->sR:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/users/EditUserInfoController;)Lcom/android/vendorsettings/users/EditUserPhotoController;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atE:Lcom/android/vendorsettings/users/EditUserPhotoController;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
    .locals 9

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 106
    iput-object p6, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atb:Landroid/os/UserHandle;

    .line 107
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->sR:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 108
    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->sR:Landroid/os/UserManager;

    .line 110
    :cond_0
    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    const v1, 0x7f040071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 113
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->sR:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atb:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 115
    const v0, 0x7f1300e9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    .line 116
    iget-object v0, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v0, 0x7f1300e8

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atD:Landroid/graphics/Bitmap;

    invoke-static {v7, v0}, Lcom/android/vendorsettings/c/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/vendorsettings/c/a;

    move-result-object v4

    .line 128
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    new-instance v0, Lcom/android/vendorsettings/users/EditUserPhotoController;

    iget-object v3, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atD:Landroid/graphics/Bitmap;

    iget-boolean v5, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atF:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/users/EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    iput-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atE:Lcom/android/vendorsettings/users/EditUserPhotoController;

    .line 131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c01e3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v0, Lcom/android/vendorsettings/users/EditUserInfoController$2;

    move-object v1, p0

    move-object v2, v6

    move-object v3, p3

    move-object v4, p5

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/vendorsettings/users/EditUserInfoController$2;-><init>(Lcom/android/vendorsettings/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/vendorsettings/users/EditUserInfoController$1;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/users/EditUserInfoController$1;-><init>(Lcom/android/vendorsettings/users/EditUserInfoController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atC:Landroid/app/Dialog;

    .line 183
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atC:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 186
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atC:Landroid/app/Dialog;

    return-object v0

    .line 124
    :cond_1
    if-nez p2, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->sR:Landroid/os/UserManager;

    invoke-static {v7, v0, v1}, Lcom/android/vendorsettings/iC;->a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, p2

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atC:Landroid/app/Dialog;

    .line 65
    iput-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atD:Landroid/graphics/Bitmap;

    .line 66
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atF:Z

    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atC:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atC:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atE:Lcom/android/vendorsettings/users/EditUserPhotoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vendorsettings/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    const-string v0, "pending_photo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atD:Landroid/graphics/Bitmap;

    .line 74
    const-string v0, "awaiting_result"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atF:Z

    .line 75
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atC:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atC:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atE:Lcom/android/vendorsettings/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "pending_photo"

    iget-object v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atE:Lcom/android/vendorsettings/users/EditUserPhotoController;

    invoke-virtual {v1}, Lcom/android/vendorsettings/users/EditUserPhotoController;->vf()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atF:Z

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "awaiting_result"

    iget-boolean v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atF:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    :cond_1
    return-void
.end method

.method public ve()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController;->atF:Z

    .line 91
    return-void
.end method
