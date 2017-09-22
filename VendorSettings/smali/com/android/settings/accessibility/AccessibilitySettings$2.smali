.class Lcom/android/settings/accessibility/AccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# instance fields
.field final synthetic CR:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$2;->CR:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private iL()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$2;->CR:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->d(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$2;->CR:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->c(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->iL()V

    .line 149
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->iL()V

    .line 154
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->iL()V

    .line 159
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->iL()V

    .line 164
    return-void
.end method
