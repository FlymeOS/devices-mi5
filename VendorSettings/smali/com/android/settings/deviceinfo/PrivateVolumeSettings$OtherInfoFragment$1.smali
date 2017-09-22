.class Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Wr:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

.field final synthetic nJ:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->Wr:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->nJ:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->Wr:Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->nJ:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 824
    return-void
.end method
