.class Lmiui/view/VolumeDialog$2;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragging:Z

.field private final sliderHitRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiui/view/VolumeDialog;

.field final synthetic val$row:Lmiui/view/VolumeDialog$VolumeRow;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V
    .locals 1

    .prologue
    .line 172
    iput-object p1, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iput-object p2, p0, Lmiui/view/VolumeDialog$2;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog$2;->sliderHitRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 178
    iget-object v2, p0, Lmiui/view/VolumeDialog$2;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lmiui/view/VolumeDialog$2;->sliderHitRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lmiui/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 179
    iget-boolean v2, p0, Lmiui/view/VolumeDialog$2;->dragging:Z

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lmiui/view/VolumeDialog$2;->sliderHitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 181
    iput-boolean v0, p0, Lmiui/view/VolumeDialog$2;->dragging:Z

    .line 183
    :cond_0
    iget-boolean v2, p0, Lmiui/view/VolumeDialog$2;->dragging:Z

    if-eqz v2, :cond_3

    .line 184
    iget-object v2, p0, Lmiui/view/VolumeDialog$2;->sliderHitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/view/VolumeDialog$2;->sliderHitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 185
    iget-object v2, p0, Lmiui/view/VolumeDialog$2;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, p2}, Lmiui/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 188
    :cond_1
    iput-boolean v1, p0, Lmiui/view/VolumeDialog$2;->dragging:Z

    .line 192
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
