.class Lcom/android/vendorsettings/eO;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic rQ:Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/vendorsettings/eO;->rQ:Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/vendorsettings/eO;->rQ:Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;->h(Lcom/android/vendorsettings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method
