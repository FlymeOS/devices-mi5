.class Lcom/android/vendorsettings/users/EditUserInfoController$2;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic atG:Lcom/android/vendorsettings/users/EditUserInfoController;

.field final synthetic atH:Landroid/widget/EditText;

.field final synthetic atI:Ljava/lang/CharSequence;

.field final synthetic atJ:Lcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;

.field final synthetic atK:Landroid/graphics/drawable/Drawable;

.field final synthetic val$fragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atG:Lcom/android/vendorsettings/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atH:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atI:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atJ:Lcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;

    iput-object p5, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atK:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 138
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 140
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atH:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atI:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atI:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atJ:Lcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atJ:Lcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;->f(Ljava/lang/CharSequence;)V

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atG:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-static {v1}, Lcom/android/vendorsettings/users/EditUserInfoController;->b(Lcom/android/vendorsettings/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atG:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-static {v2}, Lcom/android/vendorsettings/users/EditUserInfoController;->a(Lcom/android/vendorsettings/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atG:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-static {v0}, Lcom/android/vendorsettings/users/EditUserInfoController;->c(Lcom/android/vendorsettings/users/EditUserInfoController;)Lcom/android/vendorsettings/users/EditUserPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/users/EditUserPhotoController;->vg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atG:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-static {v1}, Lcom/android/vendorsettings/users/EditUserInfoController;->c(Lcom/android/vendorsettings/users/EditUserInfoController;)Lcom/android/vendorsettings/users/EditUserPhotoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vendorsettings/users/EditUserPhotoController;->vf()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 154
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 156
    iget-object v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atJ:Lcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v1, :cond_3

    .line 157
    iget-object v1, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atJ:Lcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v1, v0}, Lcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;->b(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_3
    new-instance v1, Lcom/android/vendorsettings/users/EditUserInfoController$2$1;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/users/EditUserInfoController$2$1;-><init>(Lcom/android/vendorsettings/users/EditUserInfoController$2;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/vendorsettings/users/EditUserInfoController$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/users/EditUserInfoController$2;->atG:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/vendorsettings/users/EditUserInfoController;->clear()V

    .line 172
    return-void
.end method
