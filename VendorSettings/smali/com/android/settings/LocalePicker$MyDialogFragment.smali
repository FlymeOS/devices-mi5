.class public Lcom/android/settings/LocalePicker$MyDialogFragment;
.super Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
.source "LocalePicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>()V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/cs;I)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/cs;I)V

    .line 130
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker$MyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker$MyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 138
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker$MyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker$MyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 146
    :cond_0
    return-void
.end method
