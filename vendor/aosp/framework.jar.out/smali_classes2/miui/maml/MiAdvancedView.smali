.class public Lmiui/maml/MiAdvancedView;
.super Landroid/view/View;
.source "MiAdvancedView.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MiAdvancedView"


# instance fields
.field private mLoggedHardwareRender:Z

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPaused:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mScale:F

.field private mThread:Lmiui/maml/RenderThread;

.field private mUseExternalRenderThread:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    .line 40
    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setClickable(Z)V

    .line 41
    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setFocusable(Z)V

    .line 42
    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setFocusableInTouchMode(Z)V

    .line 43
    iput-object p2, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 44
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v1, Lmiui/maml/MiAdvancedView$1;

    invoke-direct {v1, p0}, Lmiui/maml/MiAdvancedView$1;-><init>(Lmiui/maml/MiAdvancedView;)V

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    .line 53
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lmiui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V

    .line 58
    if-eqz p3, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    .line 60
    iput-object p3, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    .line 61
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->init()V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->cleanUp(Z)V

    .line 85
    return-void
.end method

.method public cleanUp(Z)V
    .locals 2
    .param p1, "keepResource"    # Z

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 90
    invoke-virtual {p0, v1}, Lmiui/maml/MiAdvancedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 92
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->setStop()V

    .line 94
    iput-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->detachFromRenderThread(Lmiui/maml/RenderThread;)V

    .line 97
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    goto :goto_0
.end method

.method public doRender()V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->postInvalidate()V

    .line 234
    return-void
.end method

.method public final getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 77
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 78
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->attachToRenderThread(Lmiui/maml/RenderThread;)V

    .line 79
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    .line 80
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "__objView"

    invoke-virtual {v0, v1, p0}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 173
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lmiui/maml/RenderThread;

    invoke-direct {v0}, Lmiui/maml/RenderThread;-><init>()V

    iput-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    .line 175
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->init()V

    .line 176
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->onCreateRenderThread(Lmiui/maml/RenderThread;)V

    .line 177
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 178
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->start()V

    .line 180
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    return-void
.end method

.method protected onCreateRenderThread(Lmiui/maml/RenderThread;)V
    .locals 0
    .param p1, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 251
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 185
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 151
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v1}, Lmiui/maml/RenderThread;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    if-nez v1, :cond_2

    .line 155
    const-string v1, "MiAdvancedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canvas hardware render: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    .line 159
    :cond_2
    iget v1, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 161
    .local v0, "sa":I
    iget v1, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    iget v2, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    iget v3, p0, Lmiui/maml/MiAdvancedView;->mPivotX:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/MiAdvancedView;->mPivotY:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 162
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 165
    .end local v0    # "sa":I
    :cond_3
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 67
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v2, "accessibilityText"

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 72
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 200
    iget-object v5, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v2, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 201
    .local v2, "vars":Lmiui/maml/data/Variables;
    const-string/jumbo v5, "view_width"

    sub-int v6, p4, p2

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 202
    const-string/jumbo v5, "view_height"

    sub-int v6, p5, p3

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 204
    move v3, p2

    .line 205
    .local v3, "x":I
    move v4, p3

    .line 206
    .local v4, "y":I
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mParent:Landroid/view/ViewParent;

    .line 207
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 208
    check-cast v1, Landroid/view/View;

    .line 209
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 210
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 211
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 212
    goto :goto_0

    .line 214
    .end local v1    # "parentView":Landroid/view/View;
    :cond_0
    const-string/jumbo v5, "view_x"

    int-to-float v6, v3

    iget-object v7, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 215
    const-string/jumbo v5, "view_y"

    int-to-float v6, v4

    iget-object v7, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 217
    iget-object v5, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 218
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 188
    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    .line 189
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 190
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    .line 222
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 223
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 130
    .local v0, "b":Z
    iget-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 132
    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    .line 135
    :cond_0
    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    .line 136
    const/4 v1, 0x1

    .line 138
    .end local v0    # "b":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScale(FII)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 239
    iput p1, p0, Lmiui/maml/MiAdvancedView;->mScale:F

    .line 240
    iput p2, p0, Lmiui/maml/MiAdvancedView;->mPivotX:I

    .line 241
    iput p3, p0, Lmiui/maml/MiAdvancedView;->mPivotY:I

    .line 242
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    if-nez p1, :cond_1

    .line 120
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onResume()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 122
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onPause()V

    goto :goto_0
.end method
