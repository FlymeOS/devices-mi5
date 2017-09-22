.class Lcom/android/vendorsettings/accessibility/AccessibilitySettings$3;
.super Lcom/android/vendorsettings/accessibility/SettingsContentObserver;
.source "AccessibilitySettings.java"


# instance fields
.field final synthetic CR:Lcom/android/vendorsettings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$3;->CR:Lcom/android/vendorsettings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/vendorsettings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$3;->CR:Lcom/android/vendorsettings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->a(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;)V

    .line 176
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$3;->CR:Lcom/android/vendorsettings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->b(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;)V

    .line 177
    return-void
.end method
