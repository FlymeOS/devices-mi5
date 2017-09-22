.class public Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final aMT:Ljava/lang/Class;

.field protected final aMU:Lcom/bumptech/glide/h;

.field protected final aMV:Ljava/lang/Class;

.field protected final aMW:Lcom/bumptech/glide/d/q;

.field protected final aMX:Lcom/bumptech/glide/d/i;

.field private aMY:Lcom/bumptech/glide/f/a;

.field private aMZ:Ljava/lang/Object;

.field private aNa:Lcom/bumptech/glide/load/b;

.field private aNb:Z

.field private aNc:I

.field private aNd:I

.field private aNe:Lcom/bumptech/glide/request/c;

.field private aNf:Ljava/lang/Float;

.field private aNg:Lcom/bumptech/glide/c;

.field private aNh:Ljava/lang/Float;

.field private aNi:Landroid/graphics/drawable/Drawable;

.field private aNj:Landroid/graphics/drawable/Drawable;

.field private aNk:Lcom/bumptech/glide/Priority;

.field private aNl:Z

.field private aNm:Lcom/bumptech/glide/request/a/f;

.field private aNn:I

.field private aNo:I

.field private aNp:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private aNq:Lcom/bumptech/glide/load/f;

.field private aNr:Z

.field private aNs:Z

.field private aNt:Landroid/graphics/drawable/Drawable;

.field private aNu:I

.field protected final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/i;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/bumptech/glide/g/b;->EF()Lcom/bumptech/glide/g/b;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/c;->aNa:Lcom/bumptech/glide/load/b;

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/c;->aNh:Ljava/lang/Float;

    .line 71
    iput-object v0, p0, Lcom/bumptech/glide/c;->aNk:Lcom/bumptech/glide/Priority;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/c;->aNl:Z

    .line 73
    invoke-static {}, Lcom/bumptech/glide/request/a/g;->Ex()Lcom/bumptech/glide/request/a/f;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/c;->aNm:Lcom/bumptech/glide/request/a/f;

    .line 74
    iput v2, p0, Lcom/bumptech/glide/c;->aNn:I

    .line 75
    iput v2, p0, Lcom/bumptech/glide/c;->aNo:I

    .line 76
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->aQA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v1, p0, Lcom/bumptech/glide/c;->aNp:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 77
    invoke-static {}, Lcom/bumptech/glide/load/resource/d;->Du()Lcom/bumptech/glide/load/resource/d;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/c;->aNq:Lcom/bumptech/glide/load/f;

    .line 97
    iput-object p1, p0, Lcom/bumptech/glide/c;->context:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/bumptech/glide/c;->aMT:Ljava/lang/Class;

    .line 99
    iput-object p4, p0, Lcom/bumptech/glide/c;->aMV:Ljava/lang/Class;

    .line 100
    iput-object p5, p0, Lcom/bumptech/glide/c;->aMU:Lcom/bumptech/glide/h;

    .line 101
    iput-object p6, p0, Lcom/bumptech/glide/c;->aMW:Lcom/bumptech/glide/d/q;

    .line 102
    iput-object p7, p0, Lcom/bumptech/glide/c;->aMX:Lcom/bumptech/glide/d/i;

    .line 103
    if-eqz p3, :cond_0

    new-instance v0, Lcom/bumptech/glide/f/a;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/f/a;-><init>(Lcom/bumptech/glide/f/f;)V

    :cond_0
    iput-object v0, p0, Lcom/bumptech/glide/c;->aMY:Lcom/bumptech/glide/f/a;

    .line 106
    if-nez p1, :cond_1

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "LoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/c;)V
    .locals 8

    .prologue
    .line 85
    iget-object v1, p3, Lcom/bumptech/glide/c;->context:Landroid/content/Context;

    iget-object v2, p3, Lcom/bumptech/glide/c;->aMT:Ljava/lang/Class;

    iget-object v5, p3, Lcom/bumptech/glide/c;->aMU:Lcom/bumptech/glide/h;

    iget-object v6, p3, Lcom/bumptech/glide/c;->aMW:Lcom/bumptech/glide/d/q;

    iget-object v7, p3, Lcom/bumptech/glide/c;->aMX:Lcom/bumptech/glide/d/i;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/d/q;Lcom/bumptech/glide/d/i;)V

    .line 87
    iget-object v0, p3, Lcom/bumptech/glide/c;->aMZ:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/c;->aMZ:Ljava/lang/Object;

    .line 88
    iget-boolean v0, p3, Lcom/bumptech/glide/c;->aNb:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/c;->aNb:Z

    .line 89
    iget-object v0, p3, Lcom/bumptech/glide/c;->aNa:Lcom/bumptech/glide/load/b;

    iput-object v0, p0, Lcom/bumptech/glide/c;->aNa:Lcom/bumptech/glide/load/b;

    .line 90
    iget-object v0, p3, Lcom/bumptech/glide/c;->aNp:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/c;->aNp:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 91
    iget-boolean v0, p3, Lcom/bumptech/glide/c;->aNl:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/c;->aNl:Z

    .line 92
    return-void
.end method

.method private Bx()Lcom/bumptech/glide/Priority;
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/bumptech/glide/c;->aNk:Lcom/bumptech/glide/Priority;

    sget-object v1, Lcom/bumptech/glide/Priority;->aNT:Lcom/bumptech/glide/Priority;

    if-ne v0, v1, :cond_0

    .line 777
    sget-object v0, Lcom/bumptech/glide/Priority;->aNS:Lcom/bumptech/glide/Priority;

    .line 783
    :goto_0
    return-object v0

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->aNk:Lcom/bumptech/glide/Priority;

    sget-object v1, Lcom/bumptech/glide/Priority;->aNS:Lcom/bumptech/glide/Priority;

    if-ne v0, v1, :cond_1

    .line 779
    sget-object v0, Lcom/bumptech/glide/Priority;->aNR:Lcom/bumptech/glide/Priority;

    goto :goto_0

    .line 781
    :cond_1
    sget-object v0, Lcom/bumptech/glide/Priority;->aNQ:Lcom/bumptech/glide/Priority;

    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/request/b/k;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/b;)Lcom/bumptech/glide/request/a;
    .locals 24

    .prologue
    .line 838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/c;->aMY:Lcom/bumptech/glide/f/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/c;->aMZ:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/c;->aNa:Lcom/bumptech/glide/load/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/c;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/c;->aNi:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/bumptech/glide/c;->aNc:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/c;->aNj:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bumptech/glide/c;->aNd:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/c;->aNt:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/bumptech/glide/c;->aNu:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/c;->aNe:Lcom/bumptech/glide/request/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/c;->aMU:Lcom/bumptech/glide/h;

    invoke-virtual {v5}, Lcom/bumptech/glide/h;->BD()Lcom/bumptech/glide/load/engine/e;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/c;->aNq:Lcom/bumptech/glide/load/f;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/c;->aMV:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bumptech/glide/c;->aNl:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/c;->aNm:Lcom/bumptech/glide/request/a/f;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/c;->aNo:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/c;->aNn:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/c;->aNp:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v23, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v15, p4

    invoke-static/range {v1 .. v23}, Lcom/bumptech/glide/request/GenericRequest;->a(Lcom/bumptech/glide/f/f;Ljava/lang/Object;Lcom/bumptech/glide/load/b;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/b/k;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/f;Ljava/lang/Class;ZLcom/bumptech/glide/request/a/f;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/bumptech/glide/request/b/k;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/a;
    .locals 4

    .prologue
    .line 794
    iget-object v0, p0, Lcom/bumptech/glide/c;->aNg:Lcom/bumptech/glide/c;

    if-eqz v0, :cond_4

    .line 795
    iget-boolean v0, p0, Lcom/bumptech/glide/c;->aNs:Z

    if-eqz v0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->aNg:Lcom/bumptech/glide/c;

    iget-object v0, v0, Lcom/bumptech/glide/c;->aNm:Lcom/bumptech/glide/request/a/f;

    invoke-static {}, Lcom/bumptech/glide/request/a/g;->Ex()Lcom/bumptech/glide/request/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/bumptech/glide/c;->aNg:Lcom/bumptech/glide/c;

    iget-object v1, p0, Lcom/bumptech/glide/c;->aNm:Lcom/bumptech/glide/request/a/f;

    iput-object v1, v0, Lcom/bumptech/glide/c;->aNm:Lcom/bumptech/glide/request/a/f;

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/c;->aNg:Lcom/bumptech/glide/c;

    iget-object v0, v0, Lcom/bumptech/glide/c;->aNk:Lcom/bumptech/glide/Priority;

    if-nez v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/bumptech/glide/c;->aNg:Lcom/bumptech/glide/c;

    invoke-direct {p0}, Lcom/bumptech/glide/c;->Bx()Lcom/bumptech/glide/Priority;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->aNk:Lcom/bumptech/glide/Priority;

    .line 808
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/c;->aNo:I

    iget v1, p0, Lcom/bumptech/glide/c;->aNn:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/h;->J(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/c;->aNg:Lcom/bumptech/glide/c;

    iget v0, v0, Lcom/bumptech/glide/c;->aNo:I

    iget-object v1, p0, Lcom/bumptech/glide/c;->aNg:Lcom/bumptech/glide/c;

    iget v1, v1, Lcom/bumptech/glide/c;->aNn:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/h;->J(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 811
    iget-object v0, p0, Lcom/bumptech/glide/c;->aNg:Lcom/bumptech/glide/c;

    iget v1, p0, Lcom/bumptech/glide/c;->aNo:I

    iget v2, p0, Lcom/bumptech/glide/c;->aNn:I

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/c;->E(II)Lcom/bumptech/glide/c;

    .line 814
    :cond_3
    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/e;-><init>(Lcom/bumptech/glide/request/b;)V

    .line 815
    iget-object v1, p0, Lcom/bumptech/glide/c;->aNh:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/c;->aNk:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/b/k;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/b;)Lcom/bumptech/glide/request/a;

    move-result-object v1

    .line 817
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/c;->aNs:Z

    .line 819
    iget-object v2, p0, Lcom/bumptech/glide/c;->aNg:Lcom/bumptech/glide/c;

    invoke-direct {v2, p1, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/b/k;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/a;

    move-result-object v2

    .line 820
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/bumptech/glide/c;->aNs:Z

    .line 821
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/a;)V

    .line 832
    :goto_0
    return-object v0

    .line 823
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/c;->aNf:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 825
    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/e;-><init>(Lcom/bumptech/glide/request/b;)V

    .line 826
    iget-object v1, p0, Lcom/bumptech/glide/c;->aNh:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/c;->aNk:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/b/k;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/b;)Lcom/bumptech/glide/request/a;

    move-result-object v1

    .line 827
    iget-object v2, p0, Lcom/bumptech/glide/c;->aNf:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0}, Lcom/bumptech/glide/c;->Bx()Lcom/bumptech/glide/Priority;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/b/k;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/b;)Lcom/bumptech/glide/request/a;

    move-result-object v2

    .line 828
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/a;)V

    goto :goto_0

    .line 832
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/c;->aNh:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/c;->aNk:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/b/k;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/b;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/bumptech/glide/request/b/k;)Lcom/bumptech/glide/request/a;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/bumptech/glide/c;->aNk:Lcom/bumptech/glide/Priority;

    if-nez v0, :cond_0

    .line 788
    sget-object v0, Lcom/bumptech/glide/Priority;->aNS:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/c;->aNk:Lcom/bumptech/glide/Priority;

    .line 790
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/b/k;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method Bt()V
    .locals 0

    .prologue
    .line 772
    return-void
.end method

.method Bu()V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public Bv()Lcom/bumptech/glide/c;
    .locals 2

    .prologue
    .line 624
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/c;

    .line 626
    iget-object v1, p0, Lcom/bumptech/glide/c;->aMY:Lcom/bumptech/glide/f/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/c;->aMY:Lcom/bumptech/glide/f/a;

    invoke-virtual {v1}, Lcom/bumptech/glide/f/a;->Eg()Lcom/bumptech/glide/f/a;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/bumptech/glide/c;->aMY:Lcom/bumptech/glide/f/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    return-object v0

    .line 626
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public E(II)Lcom/bumptech/glide/c;
    .locals 2

    .prologue
    .line 563
    invoke-static {p1, p2}, Lcom/bumptech/glide/h/h;->J(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/c;->aNo:I

    .line 567
    iput p2, p0, Lcom/bumptech/glide/c;->aNn:I

    .line 569
    return-object p0
.end method

.method a(Lcom/bumptech/glide/request/a/f;)Lcom/bumptech/glide/c;
    .locals 2

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Animation factory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/c;->aNm:Lcom/bumptech/glide/request/a/f;

    .line 422
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/b/k;)Lcom/bumptech/glide/request/b/k;
    .locals 2

    .prologue
    .line 642
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 643
    if-nez p1, :cond_0

    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass in a non null Target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/c;->aNb:Z

    if-nez v0, :cond_1

    .line 647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must first set a model (try #load())"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/request/b/k;->EA()Lcom/bumptech/glide/request/a;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_2

    .line 653
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->clear()V

    .line 654
    iget-object v1, p0, Lcom/bumptech/glide/c;->aMW:Lcom/bumptech/glide/d/q;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/d/q;->b(Lcom/bumptech/glide/request/a;)V

    .line 655
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->recycle()V

    .line 658
    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/request/b/k;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    .line 659
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/b/k;->f(Lcom/bumptech/glide/request/a;)V

    .line 660
    iget-object v1, p0, Lcom/bumptech/glide/c;->aMX:Lcom/bumptech/glide/d/i;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/d/i;->a(Lcom/bumptech/glide/d/j;)V

    .line 661
    iget-object v1, p0, Lcom/bumptech/glide/c;->aMW:Lcom/bumptech/glide/d/q;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/d/q;->a(Lcom/bumptech/glide/request/a;)V

    .line 663
    return-object p1
.end method

.method public b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bumptech/glide/c;->aMY:Lcom/bumptech/glide/f/a;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/bumptech/glide/c;->aMY:Lcom/bumptech/glide/f/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/a;->d(Lcom/bumptech/glide/load/a;)V

    .line 250
    :cond_0
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;
    .locals 2

    .prologue
    .line 587
    if-nez p1, :cond_0

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Signature must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/c;->aNa:Lcom/bumptech/glide/load/b;

    .line 591
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/c;->aMY:Lcom/bumptech/glide/f/a;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/c;->aMY:Lcom/bumptech/glide/f/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/a;->d(Lcom/bumptech/glide/load/d;)V

    .line 211
    :cond_0
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/bumptech/glide/c;->aNp:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 273
    return-object p0
.end method

.method public varargs b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 322
    iput-boolean v1, p0, Lcom/bumptech/glide/c;->aNr:Z

    .line 323
    array-length v0, p1

    if-ne v0, v1, :cond_0

    .line 324
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/bumptech/glide/c;->aNq:Lcom/bumptech/glide/load/f;

    .line 329
    :goto_0
    return-object p0

    .line 326
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/c;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/c;-><init>([Lcom/bumptech/glide/load/f;)V

    iput-object v0, p0, Lcom/bumptech/glide/c;->aNq:Lcom/bumptech/glide/load/f;

    goto :goto_0
.end method

.method public b(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/b/k;
    .locals 2

    .prologue
    .line 676
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 677
    if-nez p1, :cond_0

    .line 678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass in a non null View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/c;->aNr:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 682
    sget-object v0, Lcom/bumptech/glide/d;->aNv:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 697
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->aMU:Lcom/bumptech/glide/h;

    iget-object v1, p0, Lcom/bumptech/glide/c;->aMV:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/b/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/b/k;)Lcom/bumptech/glide/request/b/k;

    move-result-object v0

    return-object v0

    .line 684
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->Bu()V

    goto :goto_0

    .line 689
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->Bt()V

    goto :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bW(Z)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 548
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/bumptech/glide/c;->aNl:Z

    .line 550
    return-object p0

    .line 548
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->Bv()Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public t(Ljava/lang/Object;)Lcom/bumptech/glide/c;
    .locals 1

    .prologue
    .line 606
    iput-object p1, p0, Lcom/bumptech/glide/c;->aMZ:Ljava/lang/Object;

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/c;->aNb:Z

    .line 608
    return-object p0
.end method
