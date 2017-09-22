.class public Lcom/android/vendorsettings/MiuiConfirmCommonPassword;
.super Landroid/app/Activity;
.source "MiuiConfirmCommonPassword.java"


# instance fields
.field private mUserId:I

.field private qd:Landroid/app/AlertDialog;

.field private qe:Lcom/android/vendorsettings/cZ;

.field private qf:I

.field private qg:Ljava/lang/String;

.field private qh:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    .line 29
    iput-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qe:Lcom/android/vendorsettings/cZ;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eT()V

    return-void
.end method

.method private aM()Z
    .locals 2

    .prologue
    .line 230
    const-string v0, "security_core_add"

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/MiuiConfirmCommonPassword;)Lcom/android/vendorsettings/cZ;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qe:Lcom/android/vendorsettings/cZ;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/MiuiConfirmCommonPassword;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/MiuiConfirmCommonPassword;)I
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qf:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qf:I

    return v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    .line 288
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/MiuiConfirmCommonPassword;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qf:I

    return v0
.end method

.method private eP()V
    .locals 5

    .prologue
    .line 79
    new-instance v0, Lcom/android/vendorsettings/ef;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/ef;-><init>(Lcom/android/vendorsettings/MiuiConfirmCommonPassword;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040039

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c110c

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    .line 99
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 102
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/cZ;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/cZ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qe:Lcom/android/vendorsettings/cZ;

    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qe:Lcom/android/vendorsettings/cZ;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dV()Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->aM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 107
    :cond_1
    new-instance v1, Lcom/android/vendorsettings/eg;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/eg;-><init>(Lcom/android/vendorsettings/MiuiConfirmCommonPassword;)V

    .line 138
    iget-object v2, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qe:Lcom/android/vendorsettings/cZ;

    invoke-virtual {v2, v1, v0}, Lcom/android/vendorsettings/cZ;->a(Lcom/android/vendorsettings/dd;Ljava/util/List;)V

    .line 139
    return-void
.end method

.method private eQ()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qe:Lcom/android/vendorsettings/cZ;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qe:Lcom/android/vendorsettings/cZ;

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dX()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qe:Lcom/android/vendorsettings/cZ;

    .line 146
    :cond_0
    return-void
.end method

.method private eR()V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eQ()V

    .line 169
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->dismissDialog()V

    .line 171
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->setResult(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->finish()V

    .line 173
    return-void
.end method

.method private eS()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qe:Lcom/android/vendorsettings/cZ;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    const v1, 0x7f13007c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c110d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eQ()V

    .line 183
    iget v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qf:I

    .line 184
    iget v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qf:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->dismissDialog()V

    .line 186
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eT()V

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eP()V

    goto :goto_0
.end method

.method private eT()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_password_type"

    iget v2, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->mUserId:I

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 254
    if-eqz v0, :cond_1

    .line 256
    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 257
    const-class v0, Lcom/android/vendorsettings/ConfirmLockPattern$InternalActivity;

    .line 262
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->aM()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 265
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 266
    const-string v0, "businessId"

    const-string v2, "security_core_add"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 268
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->startActivityForResult(Landroid/content/Intent;I)V

    .line 273
    :goto_2
    return-void

    .line 259
    :cond_0
    const-class v0, Lcom/android/vendorsettings/ConfirmLockPassword$InternalActivity;

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->setResult(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->finish()V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic f(Lcom/android/vendorsettings/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eQ()V

    return-void
.end method

.method static synthetic g(Lcom/android/vendorsettings/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->dismissDialog()V

    return-void
.end method

.method static synthetic h(Lcom/android/vendorsettings/MiuiConfirmCommonPassword;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->aM()Z

    move-result v0

    return v0
.end method

.method private h(Ljava/util/List;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->aM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .prologue
    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "second_user_id"

    const/16 v3, -0x2710

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 215
    invoke-static {p0, v1}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 226
    :cond_2
    return-object p1
.end method


# virtual methods
.method protected R(I)V
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->mUserId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eR()V

    .line 165
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eS()V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->S(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eR()V

    goto :goto_0

    .line 162
    :cond_2
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eS()V

    goto :goto_0
.end method

.method protected S(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "second_user_id"

    const/16 v3, -0x2710

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 195
    invoke-static {p0, v1}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 278
    invoke-virtual {p0, p2}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->setResult(I)V

    .line 280
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->finish()V

    .line 281
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v4, -0x2710

    const/4 v1, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qh:Landroid/app/ActivityManager;

    .line 42
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "businessId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    iput-object v2, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qg:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->aM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.android.settings.userIdToConfirm"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->mUserId:I

    .line 47
    iget v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->mUserId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->mUserId:I

    if-eq v0, v4, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.android.settings.bgColor"

    const v4, 0x7f0e008b

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 49
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 53
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a00d6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a00d7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 57
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 58
    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 59
    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 64
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/vendorsettings/cZ;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/cZ;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dV()Ljava/util/List;

    move-result-object v0

    .line 65
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->h(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qh:Landroid/app/ActivityManager;

    iget v1, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eP()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    return-void

    .line 57
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "MiuiConfirmCommonPassword"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_4
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eT()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eQ()V

    .line 247
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->dismissDialog()V

    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 249
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->eQ()V

    .line 236
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->qd:Landroid/app/AlertDialog;

    .line 239
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiConfirmCommonPassword;->finish()V

    .line 241
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 242
    return-void
.end method
