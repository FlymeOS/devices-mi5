.class public Lmiui/maml/data/ContentProviderBinder;
.super Lmiui/maml/data/VariableBinder;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/ContentProviderBinder$2;,
        Lmiui/maml/data/ContentProviderBinder$ChangeObserver;,
        Lmiui/maml/data/ContentProviderBinder$QueryHandler;,
        Lmiui/maml/data/ContentProviderBinder$List;,
        Lmiui/maml/data/ContentProviderBinder$Variable;,
        Lmiui/maml/data/ContentProviderBinder$Builder;,
        Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field private mAwareChangeWhilePause:Z

.field public mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field protected mCountName:Ljava/lang/String;

.field private mCountVar:Lmiui/maml/data/IndexedVariable;

.field private mHandler:Landroid/os/Handler;

.field private mLastQueryTime:J

.field private mLastUri:Landroid/net/Uri;

.field private mList:Lmiui/maml/data/ContentProviderBinder$List;

.field private mNeedsRequery:Z

.field protected mOrder:Ljava/lang/String;

.field private mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

.field private mSystemBootCompleted:Z

.field private mUpdateInterval:I

.field private mUpdater:Ljava/lang/Runnable;

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field protected mWhereFormatter:Lmiui/maml/util/TextFormatter;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 295
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 68
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 296
    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 297
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;-><init>(Lmiui/maml/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    .line 298
    if-eqz p1, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    .line 300
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/ContentProviderBinder;

    .prologue
    .line 45
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/ContentProviderBinder;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/data/ContentProviderBinder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/ContentProviderBinder;

    .prologue
    .line 45
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkUpdate()V
    .locals 6

    .prologue
    .line 626
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-gtz v2, :cond_0

    .line 635
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    .line 630
    .local v0, "elapsedTime":J
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 631
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 632
    const-wide/16 v0, 0x0

    .line 634
    :cond_1
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    iget v4, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 19
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 338
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/data/ContentProviderBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    .line 339
    .local v3, "vars":Lmiui/maml/data/Variables;
    const-string v2, "uriExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    .line 340
    .local v7, "uriExp":Lmiui/maml/data/Expression;
    const-string v2, "uriFormatExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    .line 341
    .local v8, "uriFormatExp":Lmiui/maml/data/Expression;
    new-instance v2, Lmiui/maml/util/TextFormatter;

    const-string v4, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uriFormat"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "uriParas"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v8}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    .line 343
    const-string v2, "columns"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 344
    .local v18, "tmp":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 345
    const-string/jumbo v2, "whereExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v14

    .line 346
    .local v14, "whereExp":Lmiui/maml/data/Expression;
    const-string/jumbo v2, "whereFormatExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v15

    .line 347
    .local v15, "whereFormatExp":Lmiui/maml/data/Expression;
    new-instance v9, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v2, "where"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "whereFormat"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "whereParas"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v3

    invoke-direct/range {v9 .. v15}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    .line 349
    const-string v2, "args"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 350
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 351
    const-string v2, "order"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 352
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v18, 0x0

    .end local v18    # "tmp":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 354
    const-string v2, "countName"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 355
    .restart local v18    # "tmp":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v18, 0x0

    .end local v18    # "tmp":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 357
    new-instance v2, Lmiui/maml/data/IndexedVariable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    .line 360
    :cond_2
    const-string v2, "updateInterval"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 361
    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v2, :cond_3

    .line 362
    new-instance v2, Lmiui/maml/data/ContentProviderBinder$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lmiui/maml/data/ContentProviderBinder$1;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 369
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lmiui/maml/data/ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 371
    const-string v2, "List"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 372
    .local v17, "list":Lorg/w3c/dom/Element;
    if-eqz v17, :cond_4

    .line 374
    :try_start_0
    new-instance v2, Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v4}, Lmiui/maml/data/ContentProviderBinder$List;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_4
    :goto_2
    const-string/jumbo v2, "vigilant"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    .line 380
    return-void

    .line 344
    .end local v14    # "whereExp":Lmiui/maml/data/Expression;
    .end local v15    # "whereFormatExp":Lmiui/maml/data/Expression;
    .end local v17    # "list":Lorg/w3c/dom/Element;
    .restart local v18    # "tmp":Ljava/lang/String;
    :cond_5
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 350
    .restart local v14    # "whereExp":Lmiui/maml/data/Expression;
    .restart local v15    # "whereFormatExp":Lmiui/maml/data/Expression;
    :cond_6
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 375
    .end local v18    # "tmp":Ljava/lang/String;
    .restart local v17    # "list":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v16

    .line 376
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ContentProviderBinder"

    const-string v4, "invalid List"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 484
    if-eqz p1, :cond_1

    .line 485
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-nez v0, :cond_0

    .line 486
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->updateVariables(Landroid/database/Cursor;)V

    .line 488
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->onUpdateComplete()V

    .line 491
    return-void
.end method

.method private registerObserver(Landroid/net/Uri;Z)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "reg"    # Z

    .prologue
    .line 494
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 495
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 496
    if-eqz p2, :cond_0

    .line 498
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ContentProviderBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateVariables(Landroid/database/Cursor;)V
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 506
    if-nez p1, :cond_3

    const/4 v5, 0x0

    .line 507
    .local v5, "count":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v15, :cond_0

    .line 508
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 511
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;

    if-eqz v15, :cond_1

    .line 512
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lmiui/maml/data/ContentProviderBinder$List;->fill(Landroid/database/Cursor;)V

    .line 515
    :cond_1
    if-eqz p1, :cond_2

    if-nez v5, :cond_4

    .line 516
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/maml/data/VariableBinder$Variable;

    .line 517
    .local v9, "v":Lmiui/maml/data/VariableBinder$Variable;
    check-cast v9, Lmiui/maml/data/ContentProviderBinder$Variable;

    .end local v9    # "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v9, v15}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_1

    .line 506
    .end local v5    # "count":I
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_0

    .line 521
    .restart local v5    # "count":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/maml/data/VariableBinder$Variable;

    .restart local v9    # "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object v14, v9

    .line 522
    check-cast v14, Lmiui/maml/data/ContentProviderBinder$Variable;

    .line 523
    .local v14, "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    iget-boolean v15, v14, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    if-nez v15, :cond_5

    .line 526
    const/4 v13, 0x0

    .line 527
    .local v13, "valueStr":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 528
    .local v10, "value":D
    const/4 v12, 0x0

    .line 529
    .local v12, "valueBytes":[B
    iget v15, v14, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 531
    :try_start_0
    iget-object v4, v14, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 532
    .local v4, "column":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 533
    .local v3, "col":I
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_8

    .line 534
    iget v15, v9, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    sparse-switch v15, :sswitch_data_0

    .line 555
    iget v15, v9, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    packed-switch v15, :pswitch_data_0

    .line 569
    const-string v15, "ContentProviderBinder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "invalide type"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_3
    invoke-virtual {v9, v10, v11}, Lmiui/maml/data/VariableBinder$Variable;->set(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 580
    .end local v3    # "col":I
    .end local v4    # "column":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 581
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v15, "ContentProviderBinder"

    const-string v16, "failed to get value from cursor"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 536
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "col":I
    .restart local v4    # "column":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 537
    invoke-virtual {v9, v13}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 582
    .end local v3    # "col":I
    .end local v4    # "column":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 583
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v15, "ContentProviderBinder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "column does not exist: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 541
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "col":I
    .restart local v4    # "column":Ljava/lang/String;
    :sswitch_1
    const/4 v2, 0x0

    .line 542
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 543
    if-eqz v12, :cond_6

    .line 544
    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 545
    :cond_6
    iget v15, v9, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 546
    invoke-virtual {v9, v2}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 584
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "col":I
    .end local v4    # "column":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 585
    .local v6, "e":Ljava/lang/Exception;
    const-string v15, "ContentProviderBinder"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 548
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "col":I
    .restart local v4    # "column":Ljava/lang/String;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v14, v15}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v8

    .line 549
    .local v8, "image":Lmiui/maml/elements/ImageScreenElement;
    if-eqz v8, :cond_5

    .line 550
    invoke-virtual {v8, v2}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 557
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "image":Lmiui/maml/elements/ImageScreenElement;
    :pswitch_0
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    .line 558
    goto/16 :goto_3

    .line 560
    :pswitch_1
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v15

    float-to-double v10, v15

    .line 561
    goto/16 :goto_3

    .line 563
    :pswitch_2
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    int-to-double v10, v15

    .line 564
    goto/16 :goto_3

    .line 566
    :pswitch_3
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v10, v0

    .line 567
    goto/16 :goto_3

    .line 578
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v14, v15}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 596
    .end local v3    # "col":I
    .end local v4    # "column":Ljava/lang/String;
    .end local v9    # "v":Lmiui/maml/data/VariableBinder$Variable;
    .end local v10    # "value":D
    .end local v12    # "valueBytes":[B
    .end local v13    # "valueStr":Ljava/lang/String;
    .end local v14    # "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    :cond_9
    return-void

    .line 534
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
        0x3e9 -> :sswitch_1
    .end sparse-switch

    .line 555
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createCountVar()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    iput-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    .line 310
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 311
    invoke-virtual {p0, v2}, Lmiui/maml/data/ContentProviderBinder;->setBlockedColumns([Ljava/lang/String;)V

    .line 312
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    .line 313
    return-void
.end method

.method public final getUriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 615
    const-string v0, "ContentProviderBinder"

    const-string v1, "ChangeObserver: content changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    if-nez v0, :cond_1

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    goto :goto_0
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 384
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    .line 318
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 333
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    .line 334
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 335
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    .line 324
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    goto :goto_0
.end method

.method public final setBlockedColumns([Ljava/lang/String;)V
    .locals 8
    .param p1, "cols"    # [Ljava/lang/String;

    .prologue
    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 432
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 433
    .restart local v1    # "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 434
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/data/VariableBinder$Variable;

    .local v5, "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object v6, v5

    .line 438
    check-cast v6, Lmiui/maml/data/ContentProviderBinder$Variable;

    .line 439
    .local v6, "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    if-eqz v1, :cond_1

    iget-object v7, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    :goto_2
    iput-boolean v7, v6, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 441
    .end local v5    # "v":Lmiui/maml/data/VariableBinder$Variable;
    .end local v6    # "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    :cond_2
    return-void
.end method

.method public startQuery()V
    .locals 9

    .prologue
    const/16 v1, 0x64

    .line 389
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getUriText()Ljava/lang/String;

    move-result-object v8

    .line 390
    .local v8, "uriText":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 391
    const-string v0, "ContentProviderBinder"

    const-string v1, "start query: uri null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    if-nez v0, :cond_2

    const-string v0, "content://sms/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    const-string v0, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    .line 398
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    if-eqz v0, :cond_0

    .line 402
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 403
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    .line 404
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 405
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 408
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 409
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    .line 410
    iput-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    .line 413
    :cond_3
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, "where":Ljava/lang/String;
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    const/4 v2, 0x0

    iget-object v4, p0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    .line 420
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    goto :goto_0
.end method
