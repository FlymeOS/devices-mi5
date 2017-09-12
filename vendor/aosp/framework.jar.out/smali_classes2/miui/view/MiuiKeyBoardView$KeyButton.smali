.class public Lmiui/view/MiuiKeyBoardView$KeyButton;
.super Landroid/widget/TextView;
.source "MiuiKeyBoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/MiuiKeyBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyButton"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 190
    return-void
.end method


# virtual methods
.method public layout(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 202
    sub-int v0, p3, p1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v1, p4, p2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->measure(II)V

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->layout(IIII)V

    .line 205
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView$KeyButton;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 198
    return-void
.end method
