.class final Lcom/android/settings/eS;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic rU:I

.field final synthetic val$fragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(ILandroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/android/settings/eS;->rU:I

    iput-object p2, p0, Lcom/android/settings/eS;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v0, "miui_security_fragment_result"

    iget v2, p0, Lcom/android/settings/eS;->rU:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/eS;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/eS;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/SettingsPreferenceFragment;->a(ILandroid/os/Bundle;)V

    .line 59
    return-void
.end method
