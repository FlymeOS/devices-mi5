.class public Lcom/android/settings/display/CheckableLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/display/CheckableLayout;->mChecked:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    iput-boolean v0, p0, Lcom/android/settings/display/CheckableLayout;->mChecked:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/display/CheckableLayout;->mChecked:Z

    .line 22
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/settings/display/CheckableLayout;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 4

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/settings/display/CheckableLayout;->mChecked:Z

    if-eq v0, p1, :cond_1

    .line 27
    iput-boolean p1, p0, Lcom/android/settings/display/CheckableLayout;->mChecked:Z

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/display/CheckableLayout;->refreshDrawableState()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/display/CheckableLayout;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/settings/display/CheckableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 31
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 32
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 29
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/display/CheckableLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/display/CheckableLayout;->setChecked(Z)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
