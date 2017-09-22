.class public Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"


# instance fields
.field private dr:Lcom/android/settings/aH;

.field private fi:Landroid/security/MiuiLockPatternUtils;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private rC:Lmiui/bluetooth/ble/MiBleUnlockProfile;

.field private rD:Landroid/widget/ImageView;

.field private rE:Landroid/widget/ImageView;

.field private rK:Landroid/view/View;

.field private rL:Landroid/widget/TextView;

.field private rM:Landroid/widget/ImageView;

.field private rN:Z

.field private rO:I

.field private rP:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rN:Z

    .line 62
    iput v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rO:I

    .line 64
    new-instance v0, Lcom/android/settings/eM;

    invoke-direct {v0, p0}, Lcom/android/settings/eM;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rP:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rO:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rN:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rN:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ft()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)[B
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->generateKey()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rC:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private fs()V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rO:I

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fu()V

    .line 158
    :cond_0
    new-instance v0, Lcom/android/settings/eN;

    invoke-direct {v0, p0}, Lcom/android/settings/eN;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/eN;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method

.method private ft()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rC:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fs()V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rC:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rN:Z

    goto :goto_0
.end method

.method private fu()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v2, 0x41100000    # 9.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 210
    .line 212
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rD:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rD:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rD:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 215
    :goto_0
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rL:Landroid/widget/TextView;

    const v4, 0x7f0c1028

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rM:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rM:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 219
    div-int/lit8 v4, v0, 0x12

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 220
    div-int/lit8 v0, v0, 0x12

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rM:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 226
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 227
    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 229
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 230
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 231
    invoke-virtual {v2, v9}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 233
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 234
    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 235
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 236
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rM:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rD:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private fv()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rL:Landroid/widget/TextView;

    const v1, 0x7f0c1029

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rM:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 244
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rM:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 248
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 249
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 250
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 251
    new-instance v2, Lcom/android/settings/eO;

    invoke-direct {v2, p0}, Lcom/android/settings/eO;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 263
    new-instance v2, Lcom/android/settings/eP;

    invoke-direct {v2, p0}, Lcom/android/settings/eP;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 275
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rD:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rE:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rK:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    return-void
.end method

.method static synthetic g(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fv()V

    return-void
.end method

.method private generateKey()[B
    .locals 2

    .prologue
    .line 281
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 282
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 283
    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rD:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rE:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 290
    const v0, 0x7f040135

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 292
    const v0, 0x7f13029d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rL:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f130299

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rD:Landroid/widget/ImageView;

    .line 294
    const v0, 0x7f13029a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rE:Landroid/widget/ImageView;

    .line 295
    const v0, 0x7f13029b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rM:Landroid/widget/ImageView;

    .line 296
    const v0, 0x7f13029e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rK:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rL:Landroid/widget/TextView;

    const v2, 0x7f0c0280

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rM:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rK:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rK:Landroid/view/View;

    new-instance v2, Lcom/android/settings/eQ;

    invoke-direct {v2, p0}, Lcom/android/settings/eQ;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 125
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ft()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0, v6}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->setRetainInstance(Z)V

    .line 86
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    .line 87
    new-instance v0, Lcom/android/settings/aH;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/aH;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->dr:Lcom/android/settings/aH;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 91
    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    const-string v3, "device_address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    const-string v0, "device_address"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "device_address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 103
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 104
    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 110
    new-instance v0, Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rP:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    invoke-direct {v0, v3, v4, v5}, Lmiui/bluetooth/ble/MiBleUnlockProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rC:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 111
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rC:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    .line 113
    const-string v0, "password_confirmed"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->ft()V

    .line 118
    :goto_1
    return-void

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    goto :goto_1

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->dr:Lcom/android/settings/aH;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/aH;->b(ILjava/lang/CharSequence;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rC:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rC:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 149
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 137
    iget v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rO:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fu()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->rO:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->fv()V

    goto :goto_0
.end method
