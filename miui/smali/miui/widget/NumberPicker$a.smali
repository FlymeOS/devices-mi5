.class Lmiui/widget/NumberPicker$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final Vv:I = 0x1

.field private static final Vw:I = 0x2

.field private static final Vx:I = 0x3


# instance fields
.field private final Lf:Landroid/graphics/Rect;

.field final synthetic Vu:Lmiui/widget/NumberPicker;

.field private final Vy:[I

.field private Vz:I


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 1

    .prologue
    .line 2062
    iput-object p1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2071
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/NumberPicker$a;->Lf:Landroid/graphics/Rect;

    .line 2073
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/NumberPicker$a;->Vy:[I

    .line 2075
    const/high16 v0, -0x80000000

    iput v0, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    return-void
.end method

.method private a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2375
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 2376
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2377
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2378
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2379
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2380
    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2381
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2382
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2383
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2384
    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Lf:Landroid/graphics/Rect;

    .line 2385
    invoke-virtual {v4, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2386
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2387
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2389
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vy:[I

    .line 2390
    iget-object v5, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2391
    aget v2, v0, v2

    aget v0, v0, v1

    invoke-virtual {v4, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 2392
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2394
    iget v0, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-eq v0, p1, :cond_0

    .line 2395
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2397
    :cond_0
    iget v0, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-ne v0, p1, :cond_1

    .line 2398
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2400
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2401
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2404
    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    .line 2386
    goto :goto_0
.end method

.method private a(IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 2305
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2306
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2307
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2308
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2309
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2310
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2311
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2312
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2313
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v2, v0}, Lmiui/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2315
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 2319
    packed-switch p2, :pswitch_data_0

    .line 2349
    :cond_0
    :goto_0
    return-void

    .line 2321
    :pswitch_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker$a;->eQ()Ljava/lang/String;

    move-result-object v0

    .line 2322
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2324
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2328
    :pswitch_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2331
    invoke-virtual {p0, v2}, Lmiui/widget/NumberPicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2334
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2337
    invoke-virtual {p0, v2}, Lmiui/widget/NumberPicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2342
    :pswitch_2
    invoke-direct {p0}, Lmiui/widget/NumberPicker$a;->eR()Ljava/lang/String;

    move-result-object v0

    .line 2343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2345
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ao(I)V
    .locals 3

    .prologue
    .line 2294
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2295
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2296
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2297
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2298
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2299
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2300
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v2, v0}, Lmiui/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2302
    :cond_0
    return-void
.end method

.method private e(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 2353
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 2354
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2355
    iget v0, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-eq v0, v4, :cond_0

    .line 2356
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2358
    :cond_0
    iget v0, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-ne v0, v4, :cond_1

    .line 2359
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2361
    :cond_1
    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Lf:Landroid/graphics/Rect;

    .line 2362
    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2363
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2364
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2366
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vy:[I

    .line 2367
    iget-object v5, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2368
    aget v2, v0, v2

    aget v0, v0, v1

    invoke-virtual {v4, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 2369
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2370
    return-object v3

    :cond_2
    move v0, v2

    .line 2363
    goto :goto_0
.end method

.method private eO()Z
    .locals 2

    .prologue
    .line 2458
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eP()Z
    .locals 2

    .prologue
    .line 2462
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eQ()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2466
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->j(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2467
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->k(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2468
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;I)I

    move-result v0

    .line 2470
    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->l(Lmiui/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2471
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    .line 2474
    :goto_0
    return-object v0

    .line 2471
    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->l(Lmiui/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    goto :goto_0

    .line 2474
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eR()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2478
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->j(Lmiui/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2479
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->k(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2480
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;I)I

    move-result v0

    .line 2482
    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2483
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v0

    .line 2486
    :goto_0
    return-object v0

    .line 2483
    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->l(Lmiui/widget/NumberPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    goto :goto_0

    .line 2486
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 2409
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 2410
    const-class v0, Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2411
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2412
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2414
    invoke-direct {p0}, Lmiui/widget/NumberPicker$a;->eO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2417
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2418
    invoke-direct {p0}, Lmiui/widget/NumberPicker$a;->eP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2419
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2422
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2423
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2424
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2426
    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Lf:Landroid/graphics/Rect;

    .line 2428
    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2429
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2431
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2434
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vy:[I

    .line 2435
    iget-object v5, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2436
    aget v2, v0, v2

    aget v0, v0, v1

    invoke-virtual {v4, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 2437
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2439
    iget v0, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-eq v0, v6, :cond_2

    .line 2440
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2442
    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-ne v0, v6, :cond_3

    .line 2443
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2445
    :cond_3
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2446
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2447
    :cond_4
    const/16 v0, 0x1000

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2449
    :cond_5
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_7

    .line 2450
    :cond_6
    const/16 v0, 0x2000

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2454
    :cond_7
    return-object v3

    :cond_8
    move v0, v2

    .line 2431
    goto :goto_0
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    .prologue
    .line 2079
    packed-switch p1, :pswitch_data_0

    .line 2099
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2081
    :pswitch_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/widget/NumberPicker$a;->f(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2084
    :pswitch_2
    const/4 v1, 0x3

    invoke-direct {p0}, Lmiui/widget/NumberPicker$a;->eQ()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v3

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v4

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v5, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v6}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v0

    iget-object v6, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v6}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v6

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiui/widget/NumberPicker$a;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2089
    :pswitch_3
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v4}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/widget/NumberPicker$a;->e(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2094
    :pswitch_4
    const/4 v1, 0x1

    invoke-direct {p0}, Lmiui/widget/NumberPicker$a;->eR()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v3

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v0

    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v4}, Lmiui/widget/NumberPicker;->i(Lmiui/widget/NumberPicker;)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v5, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v6}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getScrollY()I

    move-result v0

    iget-object v6, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v6}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v6

    iget-object v7, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v7}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiui/widget/NumberPicker$a;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2079
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2128
    :goto_0
    return-object v0

    .line 2108
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2110
    packed-switch p2, :pswitch_data_0

    .line 2128
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2112
    :pswitch_1
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Lmiui/widget/NumberPicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2114
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lmiui/widget/NumberPicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2116
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lmiui/widget/NumberPicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2123
    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Lmiui/widget/NumberPicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2110
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public k(II)V
    .locals 1

    .prologue
    .line 2274
    packed-switch p1, :pswitch_data_0

    .line 2291
    :cond_0
    :goto_0
    return-void

    .line 2276
    :pswitch_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker$a;->eO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2277
    invoke-direct {p0}, Lmiui/widget/NumberPicker$a;->eQ()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker$a;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 2282
    :pswitch_1
    invoke-direct {p0, p2}, Lmiui/widget/NumberPicker$a;->ao(I)V

    goto :goto_0

    .line 2285
    :pswitch_2
    invoke-direct {p0}, Lmiui/widget/NumberPicker$a;->eP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2286
    invoke-direct {p0}, Lmiui/widget/NumberPicker$a;->eR()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker$a;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 2274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/high16 v5, 0x10000

    const v4, 0x8000

    const/high16 v3, -0x80000000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2133
    packed-switch p1, :pswitch_data_0

    .line 2270
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 2135
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2137
    :sswitch_0
    iget v2, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-eq v2, p1, :cond_0

    .line 2138
    iput p1, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    move v0, v1

    .line 2139
    goto :goto_1

    .line 2143
    :sswitch_1
    iget v2, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-ne v2, p1, :cond_0

    .line 2144
    iput v3, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    move v0, v1

    .line 2145
    goto :goto_1

    .line 2150
    :sswitch_2
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2152
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    move v0, v1

    .line 2153
    goto :goto_1

    .line 2157
    :sswitch_3
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2159
    :cond_2
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v2, v0}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    move v0, v1

    .line 2160
    goto :goto_1

    .line 2166
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    .line 2204
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_1

    .line 2168
    :sswitch_4
    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2169
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2173
    :sswitch_5
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2174
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    move v0, v1

    .line 2175
    goto/16 :goto_1

    .line 2180
    :sswitch_6
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2181
    goto/16 :goto_1

    .line 2186
    :sswitch_7
    iget v2, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-eq v2, p1, :cond_0

    .line 2187
    iput p1, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    .line 2188
    invoke-virtual {p0, p1, v4}, Lmiui/widget/NumberPicker$a;->k(II)V

    .line 2190
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2191
    goto/16 :goto_1

    .line 2195
    :sswitch_8
    iget v2, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-ne v2, p1, :cond_0

    .line 2196
    iput v3, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    .line 2197
    invoke-virtual {p0, p1, v5}, Lmiui/widget/NumberPicker$a;->k(II)V

    .line 2199
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2200
    goto/16 :goto_1

    .line 2209
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_1

    .line 2211
    :sswitch_9
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2212
    iget-object v0, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2213
    invoke-virtual {p0, p1, v1}, Lmiui/widget/NumberPicker$a;->k(II)V

    move v0, v1

    .line 2215
    goto/16 :goto_1

    .line 2219
    :sswitch_a
    iget v2, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-eq v2, p1, :cond_0

    .line 2220
    iput p1, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    .line 2221
    invoke-virtual {p0, p1, v4}, Lmiui/widget/NumberPicker$a;->k(II)V

    .line 2223
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    iget-object v3, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2224
    goto/16 :goto_1

    .line 2228
    :sswitch_b
    iget v2, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-ne v2, p1, :cond_0

    .line 2229
    iput v3, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    .line 2230
    invoke-virtual {p0, p1, v5}, Lmiui/widget/NumberPicker$a;->k(II)V

    .line 2232
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    iget-object v3, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v3}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2233
    goto/16 :goto_1

    .line 2239
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    goto/16 :goto_1

    .line 2241
    :sswitch_c
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2242
    if-ne p1, v1, :cond_3

    move v0, v1

    .line 2243
    :cond_3
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v2, v0}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2244
    invoke-virtual {p0, p1, v1}, Lmiui/widget/NumberPicker$a;->k(II)V

    move v0, v1

    .line 2246
    goto/16 :goto_1

    .line 2250
    :sswitch_d
    iget v2, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-eq v2, p1, :cond_0

    .line 2251
    iput p1, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    .line 2252
    invoke-virtual {p0, p1, v4}, Lmiui/widget/NumberPicker$a;->k(II)V

    .line 2254
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    iget-object v3, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v4}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2255
    goto/16 :goto_1

    .line 2259
    :sswitch_e
    iget v2, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    if-ne v2, p1, :cond_0

    .line 2260
    iput v3, p0, Lmiui/widget/NumberPicker$a;->Vz:I

    .line 2261
    invoke-virtual {p0, p1, v5}, Lmiui/widget/NumberPicker$a;->k(II)V

    .line 2263
    iget-object v2, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    iget-object v3, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$a;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v4}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2264
    goto/16 :goto_1

    .line 2133
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 2135
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch

    .line 2166
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x10 -> :sswitch_6
        0x40 -> :sswitch_7
        0x80 -> :sswitch_8
    .end sparse-switch

    .line 2209
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_9
        0x40 -> :sswitch_a
        0x80 -> :sswitch_b
    .end sparse-switch

    .line 2239
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_c
        0x40 -> :sswitch_d
        0x80 -> :sswitch_e
    .end sparse-switch
.end method
