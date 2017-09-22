.class Lcom/android/settings/applications/AdvancedAppSettings$1;
.super Ljava/lang/Object;
.source "AdvancedAppSettings.java"

# interfaces
.implements Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# instance fields
.field final synthetic Fd:Lcom/android/settings/applications/AdvancedAppSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AdvancedAppSettings;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/applications/AdvancedAppSettings$1;->Fd:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([I[Ljava/lang/CharSequence;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings$1;->Fd:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings$1;->Fd:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-static {v0, v1}, Lcom/android/settings/applications/AdvancedAppSettings;->a(Lcom/android/settings/applications/AdvancedAppSettings;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 134
    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings$1;->Fd:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AdvancedAppSettings;->a(Lcom/android/settings/applications/AdvancedAppSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AdvancedAppSettings$1;->Fd:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Lcom/android/settings/applications/AdvancedAppSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0b0c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aget v4, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aget v4, p1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings$1;->Fd:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AdvancedAppSettings;->a(Lcom/android/settings/applications/AdvancedAppSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
