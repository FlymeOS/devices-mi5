.class public Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;
.super Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;
.source "SourceFile"


# static fields
.field private static final lB:Lmiui/reflect/Field;

.field private static final lC:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Landroid/widget/ListPopupWindow;

    const-string v1, "mPopup"

    const-string v2, "Landroid/widget/PopupWindow;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lB:Lmiui/reflect/Field;

    .line 31
    const-class v0, Landroid/widget/ListPopupWindow;

    const-string v1, "mDropDownHorizontalOffset"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lC:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->attachConstructor(Ljava/lang/String;)J

    .line 41
    const-string v0, "show"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 42
    return-void
.end method

.method protected handle()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 46
    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    move v8, v7

    invoke-virtual/range {v1 .. v8}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->handle_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->handleShow(JLandroid/widget/ListPopupWindow;)V

    .line 48
    return-void
.end method

.method protected handleShow(JLandroid/widget/ListPopupWindow;)V
    .locals 5

    .prologue
    .line 69
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lC:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p3}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    .line 73
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/widget/Spinner;

    if-eqz v3, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 75
    sget-object v3, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lC:Lmiui/reflect/Field;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v3, p3, v2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V

    .line 78
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->originalShow(JLandroid/widget/ListPopupWindow;)V

    .line 80
    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lC:Lmiui/reflect/Field;

    invoke-virtual {v0, p3, v1}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V

    .line 83
    :cond_1
    return-void
.end method

.method protected handle_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 13

    .prologue
    .line 52
    sget-boolean v4, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v4, :cond_0

    sget v4, Lmiui/R$attr;->windowActionBar:I

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v4

    if-ltz v4, :cond_0

    sget v4, Lcom/miui/internal/R$attr;->hidePopupArrow:I

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    move-wide v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v12}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    :try_start_0
    new-instance v4, Lmiui/widget/ArrowPopupWindow;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v4, v0, v1, v2, v3}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 62
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v4}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->setPopupWindow(Landroid/widget/ListPopupWindow;Landroid/widget/PopupWindow;)V
    :try_end_0
    .catch Lmiui/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v4

    .line 64
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v5

    const-string v6, "ListPopupWindow constructor"

    invoke-virtual {v5, v6, v4}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected originalShow(JLandroid/widget/ListPopupWindow;)V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.originalShow(long, ListPopupWindow)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.original_init_(long, ListPopupWindow, Context, AttributeSet, int, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPopupWindow(Landroid/widget/ListPopupWindow;Landroid/widget/PopupWindow;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->lB:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    return-void
.end method
