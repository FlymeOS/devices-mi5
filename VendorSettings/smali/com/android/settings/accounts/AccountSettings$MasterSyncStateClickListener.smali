.class Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final BW:Landroid/os/UserHandle;

.field final synthetic DS:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->DS:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object p2, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->BW:Landroid/os/UserHandle;

    .line 575
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 579
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "AccountSettings"

    const-string v2, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :goto_0
    return v1

    .line 582
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->DS:Lcom/android/settings/accounts/AccountSettings;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;->BW:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->a(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
