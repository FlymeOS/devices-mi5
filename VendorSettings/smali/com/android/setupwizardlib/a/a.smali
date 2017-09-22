.class public Lcom/android/setupwizardlib/a/a;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"


# direct methods
.method public static a(Landroid/view/Window;)V
    .locals 3

    .prologue
    const/16 v2, 0x1602

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 86
    invoke-static {p0, v2}, Lcom/android/setupwizardlib/a/a;->a(Landroid/view/Window;I)V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v0, v2}, Lcom/android/setupwizardlib/a/a;->a(Landroid/view/Window;Landroid/os/Handler;I)V

    .line 89
    :cond_0
    return-void
.end method

.method private static a(Landroid/view/Window;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 189
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 190
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 194
    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 195
    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 196
    return-void
.end method

.method private static a(Landroid/view/Window;Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-static {v0, p2}, Lcom/android/setupwizardlib/a/a;->d(Landroid/view/View;I)V

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Lcom/android/setupwizardlib/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/setupwizardlib/a/b;-><init>(Landroid/view/Window;Landroid/os/Handler;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static b(Landroid/app/Dialog;)V
    .locals 3

    .prologue
    const/16 v2, 0x1002

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/android/setupwizardlib/a/a;->b(Landroid/view/Window;)V

    .line 71
    invoke-static {v0, v2}, Lcom/android/setupwizardlib/a/a;->a(Landroid/view/Window;I)V

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/setupwizardlib/a/a;->a(Landroid/view/Window;Landroid/os/Handler;I)V

    .line 74
    :cond_0
    return-void
.end method

.method private static b(Landroid/view/Window;)V
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 203
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 208
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/setupwizardlib/a/c;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/a/c;-><init>(Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method

.method static synthetic b(Landroid/view/Window;Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/setupwizardlib/a/a;->a(Landroid/view/Window;Landroid/os/Handler;I)V

    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 97
    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public static q(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 159
    new-instance v0, Lcom/android/setupwizardlib/a/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 161
    :cond_0
    return-void
.end method
