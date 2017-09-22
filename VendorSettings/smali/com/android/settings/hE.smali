.class Lcom/android/settings/hE;
.super Landroid/database/DataSetObserver;
.source "SettingsPreferenceFragment.java"


# instance fields
.field final synthetic Ab:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/hE;->Ab:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/hE;->Ab:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->hT()V

    .line 84
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/hE;->Ab:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->hT()V

    .line 89
    return-void
.end method
