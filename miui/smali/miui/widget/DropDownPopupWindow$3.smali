.class Lmiui/widget/DropDownPopupWindow$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DropDownPopupWindow;->eg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qh:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$3;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 266
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    if-ltz v0, :cond_0

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow$3;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v2}, Lmiui/widget/DropDownPopupWindow;->c(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$a;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/widget/DropDownPopupWindow$a;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$3;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->c(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$a;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow$a;->getHeight()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 269
    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$3;->Qh:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    .line 270
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
