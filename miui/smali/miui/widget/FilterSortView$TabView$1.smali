.class Lmiui/widget/FilterSortView$TabView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rx:Landroid/view/View$OnClickListener;

.field final synthetic Ry:Lmiui/widget/FilterSortView$TabView;


# direct methods
.method constructor <init>(Lmiui/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lmiui/widget/FilterSortView$TabView$1;->Ry:Lmiui/widget/FilterSortView$TabView;

    iput-object p2, p0, Lmiui/widget/FilterSortView$TabView$1;->Rx:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 206
    iget-object v1, p0, Lmiui/widget/FilterSortView$TabView$1;->Ry:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v1}, Lmiui/widget/FilterSortView$TabView;->a(Lmiui/widget/FilterSortView$TabView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lmiui/widget/FilterSortView$TabView$1;->Ry:Lmiui/widget/FilterSortView$TabView;

    iget-object v2, p0, Lmiui/widget/FilterSortView$TabView$1;->Ry:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v2}, Lmiui/widget/FilterSortView$TabView;->b(Lmiui/widget/FilterSortView$TabView;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lmiui/widget/FilterSortView$TabView;->b(Lmiui/widget/FilterSortView$TabView;Z)V

    .line 211
    :goto_1
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->Rx:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 212
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 209
    :cond_1
    iget-object v1, p0, Lmiui/widget/FilterSortView$TabView$1;->Ry:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v1, v0}, Lmiui/widget/FilterSortView$TabView;->a(Lmiui/widget/FilterSortView$TabView;Z)V

    goto :goto_1
.end method
