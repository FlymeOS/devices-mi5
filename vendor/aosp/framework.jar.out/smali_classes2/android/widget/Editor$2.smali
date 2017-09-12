.class final Landroid/widget/Editor$2;
.super Landroid/view/ActionMode;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4085
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 4105
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 4124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 4109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 4129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4114
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 4102
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4099
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 4096
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 4093
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 4090
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4087
    return-void
.end method
