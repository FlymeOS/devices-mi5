.class Lcom/android/settings/bQ;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# instance fields
.field private final iB:Lcom/android/settings/d/j;

.field private final iF:Lcom/android/settings/DataUsageSummary$AppItem;

.field private final mTarget:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/settings/d/j;Lcom/android/settings/DataUsageSummary$AppItem;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2448
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2449
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/d/j;

    iput-object v0, p0, Lcom/android/settings/bQ;->iB:Lcom/android/settings/d/j;

    .line 2450
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    iput-object v0, p0, Lcom/android/settings/bQ;->iF:Lcom/android/settings/DataUsageSummary$AppItem;

    .line 2451
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/bQ;->mTarget:Landroid/view/View;

    .line 2452
    return-void
.end method

.method private static a(Lcom/android/settings/d/i;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2471
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2472
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2474
    if-eqz p0, :cond_0

    .line 2475
    iget-object v2, p0, Lcom/android/settings/d/i;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2476
    iget-object v0, p0, Lcom/android/settings/d/i;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2477
    iget-object v0, p0, Lcom/android/settings/d/i;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2482
    :goto_0
    return-void

    .line 2479
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2480
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static a(Lcom/android/settings/d/j;Lcom/android/settings/DataUsageSummary$AppItem;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2456
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bQ;

    .line 2457
    if-eqz v0, :cond_0

    .line 2458
    invoke-virtual {v0, v2}, Lcom/android/settings/bQ;->cancel(Z)Z

    .line 2461
    :cond_0
    iget v0, p1, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/d/j;->m(IZ)Lcom/android/settings/d/i;

    move-result-object v0

    .line 2462
    if-eqz v0, :cond_1

    .line 2463
    invoke-static {v0, p2}, Lcom/android/settings/bQ;->a(Lcom/android/settings/d/i;Landroid/view/View;)V

    .line 2468
    :goto_0
    return-void

    .line 2465
    :cond_1
    new-instance v0, Lcom/android/settings/bQ;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/bQ;-><init>(Lcom/android/settings/d/j;Lcom/android/settings/DataUsageSummary$AppItem;Landroid/view/View;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bQ;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/android/settings/d/i;
    .locals 3

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/android/settings/bQ;->iB:Lcom/android/settings/d/j;

    iget-object v1, p0, Lcom/android/settings/bQ;->iF:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v1, v1, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/d/j;->m(IZ)Lcom/android/settings/d/i;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/android/settings/d/i;)V
    .locals 1

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/settings/bQ;->mTarget:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/settings/bQ;->a(Lcom/android/settings/d/i;Landroid/view/View;)V

    .line 2497
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2443
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/bQ;->a([Ljava/lang/Void;)Lcom/android/settings/d/i;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2443
    check-cast p1, Lcom/android/settings/d/i;

    invoke-virtual {p0, p1}, Lcom/android/settings/bQ;->a(Lcom/android/settings/d/i;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 2486
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/bQ;->mTarget:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/settings/bQ;->a(Lcom/android/settings/d/i;Landroid/view/View;)V

    .line 2487
    return-void
.end method
