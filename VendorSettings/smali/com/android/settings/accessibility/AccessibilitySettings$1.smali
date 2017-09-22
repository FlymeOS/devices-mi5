.class Lcom/android/settings/accessibility/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic CR:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$1;->CR:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$1;->CR:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->a(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$1;->CR:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->b(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 142
    return-void
.end method
