.class Lcom/android/vendorsettings/users/EditUserInfoController$2$1;
.super Landroid/os/AsyncTask;
.source "EditUserInfoController.java"


# instance fields
.field final synthetic atL:Lcom/android/vendorsettings/users/EditUserInfoController$2;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/users/EditUserInfoController$2;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2$1;->atL:Lcom/android/vendorsettings/users/EditUserInfoController$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/users/EditUserInfoController$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2$1;->atL:Lcom/android/vendorsettings/users/EditUserInfoController$2;

    iget-object v0, v0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atG:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-static {v0}, Lcom/android/vendorsettings/users/EditUserInfoController;->b(Lcom/android/vendorsettings/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2$1;->atL:Lcom/android/vendorsettings/users/EditUserInfoController$2;

    iget-object v1, v1, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atG:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-static {v1}, Lcom/android/vendorsettings/users/EditUserInfoController;->a(Lcom/android/vendorsettings/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v2, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2$1;->atL:Lcom/android/vendorsettings/users/EditUserInfoController$2;

    iget-object v2, v2, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atG:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-static {v2}, Lcom/android/vendorsettings/users/EditUserInfoController;->c(Lcom/android/vendorsettings/users/EditUserInfoController;)Lcom/android/vendorsettings/users/EditUserPhotoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vendorsettings/users/EditUserPhotoController;->vf()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method
