.class Lmiui/widget/AlphabetFastIndexer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final Nk:Landroid/widget/AbsListView$OnScrollListener;

.field private final Nl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/widget/AlphabetFastIndexer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer$a;->Nl:Ljava/lang/ref/WeakReference;

    .line 497
    iput-object p2, p0, Lmiui/widget/AlphabetFastIndexer$a;->Nk:Landroid/widget/AbsListView$OnScrollListener;

    .line 498
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$a;->Nl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    .line 504
    if-eqz v0, :cond_0

    .line 505
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->b(Lmiui/widget/AlphabetFastIndexer;)V

    .line 507
    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$a;->Nk:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$a;->Nk:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 510
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$a;->Nl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    .line 515
    if-eqz v0, :cond_0

    .line 516
    invoke-static {v0, p2}, Lmiui/widget/AlphabetFastIndexer;->a(Lmiui/widget/AlphabetFastIndexer;I)I

    .line 518
    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$a;->Nk:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$a;->Nk:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 521
    :cond_1
    return-void
.end method
