.class Lmiui/maml/component/MamlView$InnerView;
.super Landroid/view/View;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/component/MamlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerView"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/component/MamlView;


# direct methods
.method public constructor <init>(Lmiui/maml/component/MamlView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    .line 87
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mHasDelay:Z
    invoke-static {v1}, Lmiui/maml/component/MamlView;->access$100(Lmiui/maml/component/MamlView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;
    invoke-static {v1}, Lmiui/maml/component/MamlView;->access$200(Lmiui/maml/component/MamlView;)Lmiui/maml/RenderUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/RenderUpdater;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mScale:F
    invoke-static {v1}, Lmiui/maml/component/MamlView;->access$300(Lmiui/maml/component/MamlView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 98
    .local v0, "sa":I
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mScale:F
    invoke-static {v1}, Lmiui/maml/component/MamlView;->access$300(Lmiui/maml/component/MamlView;)F

    move-result v1

    iget-object v2, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mScale:F
    invoke-static {v2}, Lmiui/maml/component/MamlView;->access$300(Lmiui/maml/component/MamlView;)F

    move-result v2

    iget-object v3, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mPivotX:I
    invoke-static {v3}, Lmiui/maml/component/MamlView;->access$400(Lmiui/maml/component/MamlView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mPivotY:I
    invoke-static {v4}, Lmiui/maml/component/MamlView;->access$500(Lmiui/maml/component/MamlView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 99
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    iget-object v1, v1, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 104
    .end local v0    # "sa":I
    :goto_1
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;
    invoke-static {v1}, Lmiui/maml/component/MamlView;->access$200(Lmiui/maml/component/MamlView;)Lmiui/maml/RenderUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/RenderUpdater;->doneRender()V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    iget-object v1, v1, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method
