.class Lcom/android/settings/dashboard/i;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# instance fields
.field private Vd:Ljava/util/HashMap;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 521
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 516
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/i;->Vd:Ljava/util/HashMap;

    .line 522
    iput-object p1, p0, Lcom/android/settings/dashboard/i;->mContext:Landroid/content/Context;

    .line 523
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dashboard/i;->mInflater:Landroid/view/LayoutInflater;

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/i;->mDataValid:Z

    .line 525
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dashboard/i;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/settings/dashboard/i;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 546
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 551
    iget-boolean v0, p0, Lcom/android/settings/dashboard/i;->mDataValid:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 553
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 555
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 556
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0x8

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 557
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    iget-object v7, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0xa

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 561
    iget-object v7, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xd

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->Vd:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 567
    if-nez v0, :cond_3

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 574
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->Vd:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v6, 0x7f02008a

    .line 583
    :goto_1
    new-instance v0, Lcom/android/settings/dashboard/h;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/dashboard/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 586
    :goto_2
    return-object v0

    .line 570
    :catch_0
    move-exception v0

    .line 571
    const-string v0, "SearchResultsSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create Context for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 572
    goto :goto_2

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/i;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 580
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 586
    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 591
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f02008a

    .line 596
    iget-boolean v0, p0, Lcom/android/settings/dashboard/i;->mDataValid:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 597
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_1
    if-nez p2, :cond_2

    .line 609
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040131

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 614
    :cond_2
    const v0, 0x7f130061

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 615
    const v1, 0x7f130060

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 617
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/i;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/h;

    .line 618
    iget-object v3, v2, Lcom/android/settings/dashboard/h;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget v0, v2, Lcom/android/settings/dashboard/h;->iconResId:I

    if-eq v0, v4, :cond_3

    .line 621
    iget-object v0, v2, Lcom/android/settings/dashboard/h;->context:Landroid/content/Context;

    .line 624
    :try_start_0
    iget v3, v2, Lcom/android/settings/dashboard/h;->iconResId:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 625
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-object p2

    .line 626
    :catch_0
    move-exception v0

    .line 628
    const-string v0, "SearchResultsSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load Drawable for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/android/settings/dashboard/h;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 529
    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    .line 532
    iput-object p1, p0, Lcom/android/settings/dashboard/i;->mCursor:Landroid/database/Cursor;

    .line 533
    if-eqz p1, :cond_1

    .line 534
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/i;->mDataValid:Z

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/dashboard/i;->notifyDataSetChanged()V

    goto :goto_0

    .line 537
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/i;->mDataValid:Z

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/dashboard/i;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
