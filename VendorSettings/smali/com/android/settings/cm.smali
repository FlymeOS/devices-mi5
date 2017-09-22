.class Lcom/android/settings/cm;
.super Ljava/lang/Object;
.source "DeviceAdminAddFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic lg:Lcom/android/settings/DeviceAdminAddFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAddFragment;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/cm;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/cm;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAddFragment;->ds:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/cm;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/cm;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {v0}, Lcom/android/settings/DeviceAdminAddFragment;->finish()V

    .line 278
    return-void
.end method
