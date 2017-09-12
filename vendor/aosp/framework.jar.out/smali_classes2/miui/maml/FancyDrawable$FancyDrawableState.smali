.class final Lmiui/maml/FancyDrawable$FancyDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FancyDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FancyDrawableState"
.end annotation


# instance fields
.field mRendererCore:Lmiui/maml/RendererCore;


# direct methods
.method public constructor <init>(Lmiui/maml/RendererCore;)V
    .locals 0
    .param p1, "rendererCore"    # Lmiui/maml/RendererCore;

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 209
    iput-object p1, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lmiui/maml/RendererCore;

    .line 210
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lmiui/maml/FancyDrawable;

    iget-object v1, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-direct {v0, v1}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V

    return-object v0
.end method
