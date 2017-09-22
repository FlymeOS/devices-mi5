.class public Lcom/android/settings/dashboard/e;
.super Lcom/android/settings/InstrumentedFragment;
.source "SearchResultsSummary.java"


# static fields
.field private static UO:C


# instance fields
.field private UP:Landroid/widget/ListView;

.field private UQ:Lcom/android/settings/dashboard/i;

.field private UR:Lcom/android/settings/dashboard/l;

.field private US:Landroid/widget/ListView;

.field private UT:Lcom/android/settings/dashboard/k;

.field private UU:Lcom/android/settings/dashboard/m;

.field private UV:Landroid/view/ViewGroup;

.field private UW:Landroid/view/ViewGroup;

.field private UX:Ljava/lang/String;

.field private UY:Z

.field private zt:Landroid/widget/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x2026

    sput-char v0, Lcom/android/settings/dashboard/e;->UO:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 510
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dashboard/e;)Lcom/android/settings/dashboard/i;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UQ:Lcom/android/settings/dashboard/i;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/dashboard/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/dashboard/e;->UX:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UT:Lcom/android/settings/dashboard/k;

    if-nez v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UT:Lcom/android/settings/dashboard/k;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/k;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/dashboard/e;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/e;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/dashboard/e;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/e;->aI(Z)V

    return-void
.end method

.method private aH(Z)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UV:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/settings/dashboard/e;->UV:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 272
    :cond_0
    return-void

    .line 270
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private aI(Z)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UW:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/settings/dashboard/e;->UW:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 278
    :cond_0
    return-void

    .line 276
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 366
    :goto_0
    return-object v0

    .line 358
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 360
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 361
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 359
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 366
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UQ:Lcom/android/settings/dashboard/i;

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UQ:Lcom/android/settings/dashboard/i;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/i;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/dashboard/e;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/dashboard/e;->oP()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/dashboard/e;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/e;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/dashboard/e;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/e;->aH(Z)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/dashboard/e;)Lcom/android/settings/dashboard/k;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UT:Lcom/android/settings/dashboard/k;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/dashboard/e;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/settings/dashboard/e;->UY:Z

    return p1
.end method

.method static synthetic d(Lcom/android/settings/dashboard/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/dashboard/e;)Landroid/widget/SearchView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->zt:Landroid/widget/SearchView;

    return-object v0
.end method

.method private oP()V
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/settings/dashboard/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/e;->cf(Landroid/content/Context;)Lcom/android/settings/search/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/e;->UX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/e;->bt(Ljava/lang/String;)J

    .line 282
    return-void
.end method

.method private oR()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UU:Lcom/android/settings/dashboard/m;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UU:Lcom/android/settings/dashboard/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/m;->cancel(Z)Z

    .line 321
    iput-object v2, p0, Lcom/android/settings/dashboard/e;->UU:Lcom/android/settings/dashboard/m;

    .line 323
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/e;->a(Landroid/database/Cursor;)V

    .line 324
    return-void
.end method

.method private oS()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UR:Lcom/android/settings/dashboard/l;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UR:Lcom/android/settings/dashboard/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/l;->cancel(Z)Z

    .line 339
    iput-object v2, p0, Lcom/android/settings/dashboard/e;->UR:Lcom/android/settings/dashboard/l;

    .line 341
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/e;->b(Landroid/database/Cursor;)V

    .line 342
    return-void
.end method

.method private oT()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UR:Lcom/android/settings/dashboard/l;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UR:Lcom/android/settings/dashboard/l;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/l;->cancel(Z)Z

    .line 372
    iput-object v2, p0, Lcom/android/settings/dashboard/e;->UR:Lcom/android/settings/dashboard/l;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UU:Lcom/android/settings/dashboard/m;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UU:Lcom/android/settings/dashboard/m;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/m;->cancel(Z)Z

    .line 376
    iput-object v2, p0, Lcom/android/settings/dashboard/e;->UU:Lcom/android/settings/dashboard/m;

    .line 378
    :cond_1
    return-void
.end method

.method private oU()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-direct {p0}, Lcom/android/settings/dashboard/e;->oT()V

    .line 382
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UX:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 383
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/e;->a(Landroid/database/Cursor;)V

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/m;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/m;-><init>(Lcom/android/settings/dashboard/e;Lcom/android/settings/dashboard/f;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UU:Lcom/android/settings/dashboard/m;

    .line 386
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UU:Lcom/android/settings/dashboard/m;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/dashboard/e;->UX:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private oV()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 391
    invoke-direct {p0}, Lcom/android/settings/dashboard/e;->oT()V

    .line 392
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/e;->aI(Z)V

    .line 394
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/e;->b(Landroid/database/Cursor;)V

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/l;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/l;-><init>(Lcom/android/settings/dashboard/e;Lcom/android/settings/dashboard/f;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UR:Lcom/android/settings/dashboard/l;

    .line 397
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UR:Lcom/android/settings/dashboard/l;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/dashboard/e;->UX:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public oQ()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/e;->aI(Z)V

    .line 314
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UX:Ljava/lang/String;

    .line 315
    invoke-direct {p0}, Lcom/android/settings/dashboard/e;->oU()V

    .line 316
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    new-instance v0, Lcom/android/settings/dashboard/i;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UQ:Lcom/android/settings/dashboard/i;

    .line 121
    new-instance v0, Lcom/android/settings/dashboard/k;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UT:Lcom/android/settings/dashboard/k;

    .line 123
    if-eqz p1, :cond_0

    .line 124
    const-string v0, ":settings:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/e;->UY:Z

    .line 126
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 162
    const v0, 0x7f04012c

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 164
    const v0, 0x7f13028e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UV:Landroid/view/ViewGroup;

    .line 165
    const v0, 0x7f130290

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UW:Landroid/view/ViewGroup;

    .line 167
    const v0, 0x7f130291

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UP:Landroid/widget/ListView;

    .line 168
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UP:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/dashboard/e;->UQ:Lcom/android/settings/dashboard/i;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UP:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/dashboard/f;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/f;-><init>(Lcom/android/settings/dashboard/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UP:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/e;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04012d

    iget-object v4, p0, Lcom/android/settings/dashboard/e;->UP:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 222
    const v0, 0x7f13028f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/dashboard/e;->US:Landroid/widget/ListView;

    .line 223
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->US:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/dashboard/e;->UT:Lcom/android/settings/dashboard/k;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->US:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/dashboard/g;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/g;-><init>(Lcom/android/settings/dashboard/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->US:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/e;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04012e

    iget-object v4, p0, Lcom/android/settings/dashboard/e;->US:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 247
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UP:Landroid/widget/ListView;

    .line 146
    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UQ:Lcom/android/settings/dashboard/i;

    .line 147
    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UR:Lcom/android/settings/dashboard/l;

    .line 149
    iput-object v0, p0, Lcom/android/settings/dashboard/e;->US:Landroid/widget/ListView;

    .line 150
    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UT:Lcom/android/settings/dashboard/k;

    .line 151
    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UU:Lcom/android/settings/dashboard/m;

    .line 153
    iput-object v0, p0, Lcom/android/settings/dashboard/e;->zt:Landroid/widget/SearchView;

    .line 155
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onDestroy()V

    .line 156
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 295
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/e;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 297
    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UX:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/android/settings/dashboard/e;->UX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iput-boolean v1, p0, Lcom/android/settings/dashboard/e;->UY:Z

    .line 301
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/e;->aI(Z)V

    .line 302
    invoke-direct {p0}, Lcom/android/settings/dashboard/e;->oU()V

    .line 309
    :goto_0
    return v2

    .line 304
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/dashboard/e;->UY:Z

    .line 305
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/e;->aH(Z)V

    .line 306
    invoke-direct {p0}, Lcom/android/settings/dashboard/e;->oV()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/e;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/e;->UX:Ljava/lang/String;

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/e;->UY:Z

    .line 287
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/e;->aH(Z)V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/dashboard/e;->oV()V

    .line 289
    invoke-direct {p0}, Lcom/android/settings/dashboard/e;->oP()V

    .line 291
    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 259
    iget-boolean v0, p0, Lcom/android/settings/dashboard/e;->UY:Z

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/dashboard/e;->oQ()V

    .line 262
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/e;->UY:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStop()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/dashboard/e;->oR()V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/dashboard/e;->oS()V

    .line 141
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/dashboard/e;->zt:Landroid/widget/SearchView;

    .line 266
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x22

    return v0
.end method
