.class public Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;
.super Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;
.source "SourceFile"


# static fields
.field private static final lN:Lmiui/reflect/Field;

.field private static final lO:Lmiui/reflect/Field;

.field private static final lP:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mBackgroundView"

    const-string v2, "Landroid/view/View;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->lN:Lmiui/reflect/Field;

    .line 20
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mDecorView"

    const-string v2, "Landroid/widget/PopupWindow$PopupDecorView;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->lO:Lmiui/reflect/Field;

    .line 23
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mLayoutInsetDecor"

    const-string v2, "Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->lP:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_PopupWindow_class;->handleInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    .line 31
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v1

    .line 34
    sget-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->lP:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 35
    sget-object v0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->lN:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 36
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 38
    sget-object v1, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->lO:Lmiui/reflect/Field;

    invoke-virtual {v1, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 39
    invoke-virtual {v0, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 41
    :cond_0
    return-void

    .line 38
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
