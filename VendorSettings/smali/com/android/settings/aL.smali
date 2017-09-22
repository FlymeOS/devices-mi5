.class Lcom/android/vendorsettings/aL;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fg:Lcom/android/vendorsettings/ConfirmDeviceCredentialBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ConfirmDeviceCredentialBaseFragment;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/vendorsettings/aL;->fg:Lcom/android/vendorsettings/ConfirmDeviceCredentialBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/aL;->fg:Lcom/android/vendorsettings/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 74
    return-void
.end method
