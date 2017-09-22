.class Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic DY:Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;->DY:Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;->DY:Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->a(Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;->DY:Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->b(Lcom/android/vendorsettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 630
    return-void
.end method
