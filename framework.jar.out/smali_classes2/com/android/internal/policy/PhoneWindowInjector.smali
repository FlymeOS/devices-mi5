.class Lcom/android/internal/policy/PhoneWindowInjector;
.super Ljava/lang/Object;
.source "PhoneWindowInjector.java"


# static fields
.field private static sLastInsetBottom:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method static onNavigationBarColorChange(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3
    .param p0, "window"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    const/16 v2, 0x40

    .line 14
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    move-result v0

    .line 15
    .local v0, "navigationBarColor":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 16
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->addExtraFlags(I)V

    .line 20
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->clearExtraFlags(I)V

    goto :goto_0
.end method

.method static requestApplyInsetsIfNeeded(Landroid/view/View;Landroid/view/WindowInsets;)V
    .locals 2
    .param p0, "content"    # Landroid/view/View;
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 23
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    sget v1, Lcom/android/internal/policy/PhoneWindowInjector;->sLastInsetBottom:I

    if-eq v0, v1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    sput v0, Lcom/android/internal/policy/PhoneWindowInjector;->sLastInsetBottom:I

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 27
    :cond_0
    return-void
.end method
