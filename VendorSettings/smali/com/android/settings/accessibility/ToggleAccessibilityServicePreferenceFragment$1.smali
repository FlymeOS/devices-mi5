.class Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;
.super Lcom/android/vendorsettings/accessibility/SettingsContentObserver;
.source "ToggleAccessibilityServicePreferenceFragment.java"


# instance fields
.field final synthetic Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0, p2}, Lcom/android/vendorsettings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->Dx:Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    .line 72
    return-void
.end method
