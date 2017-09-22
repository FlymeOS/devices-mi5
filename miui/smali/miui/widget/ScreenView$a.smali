.class Lmiui/widget/ScreenView$a;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/ScreenView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic XH:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2125
    iput-object p1, p0, Lmiui/widget/ScreenView$a;->XH:Lmiui/widget/ScreenView;

    .line 2126
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2127
    return-void
.end method


# virtual methods
.method public av(I)Z
    .locals 3

    .prologue
    .line 2131
    invoke-virtual {p0}, Lmiui/widget/ScreenView$a;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2132
    invoke-static {}, Lmiui/widget/ScreenView;->fa()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView$a;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lmiui/widget/ScreenView$a;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setRightDirectly(Landroid/view/View;I)V

    .line 2133
    invoke-static {}, Lmiui/widget/ScreenView;->fa()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setLeftDirectly(Landroid/view/View;I)V

    .line 2134
    const/4 v0, 0x1

    .line 2136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
