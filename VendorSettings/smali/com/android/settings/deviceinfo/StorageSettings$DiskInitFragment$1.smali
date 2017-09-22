.class Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment$1;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Xf:Ljava/lang/String;

.field final synthetic Xg:Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment$1;->Xg:Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment;

    iput-object p2, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment$1;->Xf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 435
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/android/vendorsettings/deviceinfo/StorageWizardInit;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment$1;->Xf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment$1;->Xg:Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment;->startActivity(Landroid/content/Intent;)V

    .line 438
    return-void
.end method
