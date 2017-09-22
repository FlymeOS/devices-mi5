.class public Lmiui/widget/DropDownPopupWindow$DefaultContainerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/DropDownPopupWindow$ContainerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultContainerController"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddContent(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method
