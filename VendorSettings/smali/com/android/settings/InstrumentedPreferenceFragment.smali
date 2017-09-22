.class public abstract Lcom/android/vendorsettings/InstrumentedPreferenceFragment;
.super Lmiui/preference/PreferenceFragment;
.source "InstrumentedPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onPause()V

    .line 44
    invoke-virtual {p0}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->z()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->z()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 39
    return-void
.end method

.method protected abstract z()I
.end method
