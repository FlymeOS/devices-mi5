.class public Lmiui/date/Holidays;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/date/Holidays$a;
    }
.end annotation


# static fields
.field private static final p:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lmiui/date/Holidays;",
            ">;"
        }
    .end annotation
.end field

.field private static final xm:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool",
            "<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final xn:I = -0x1

.field private static final xo:I = -0x1

.field private static final xp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[[I>;"
        }
    .end annotation
.end field

.field private static final xq:[[I

.field private static final xt:Landroid/util/SparseIntArray;


# instance fields
.field private nq:Landroid/content/res/Resources;

.field private xr:Ljava/lang/String;

.field private xs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [[I

    new-array v1, v8, [I

    const/4 v2, -0x1

    aput v2, v1, v7

    sget v2, Lcom/miui/internal/R$string;->the_eve_of_the_spring_festival:I

    aput v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v8, [I

    const/16 v2, 0x65

    aput v2, v1, v7

    sget v2, Lcom/miui/internal/R$string;->the_spring_festival:I

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v8, [I

    const/16 v2, 0x66

    aput v2, v1, v7

    sget v2, Lcom/miui/internal/R$string;->the_second_day:I

    aput v2, v1, v6

    aput-object v1, v0, v8

    new-array v1, v8, [I

    const/16 v2, 0x67

    aput v2, v1, v7

    sget v2, Lcom/miui/internal/R$string;->the_third_day:I

    aput v2, v1, v6

    aput-object v1, v0, v9

    new-array v1, v8, [I

    const/16 v2, 0x68

    aput v2, v1, v7

    sget v2, Lcom/miui/internal/R$string;->the_forth_day:I

    aput v2, v1, v6

    aput-object v1, v0, v10

    const/4 v1, 0x5

    new-array v2, v8, [I

    const/16 v3, 0x69

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_fifth_day:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [I

    const/16 v3, 0x6a

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_sixth_day:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [I

    const/16 v3, 0x6b

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_seventh_day:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [I

    const/16 v3, 0x73

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_lantern_festival:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [I

    const/16 v3, 0x1f9

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_dragon_boat_festival:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [I

    const/16 v3, 0x2c3

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_night_of_sevens:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [I

    const/16 v3, 0x2cb

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_spirit_festival:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [I

    const/16 v3, 0x32f

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_mid_autumn_festival:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [I

    const/16 v3, 0x38d

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_double_ninth_festival:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [I

    const/16 v3, 0x3f7

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_water_lantern_festival:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [I

    const/16 v3, 0x4b8

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_laba_festival:I

    aput v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lmiui/date/Holidays;->xq:[[I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/date/Holidays;->xp:Ljava/util/HashMap;

    .line 63
    sget-object v0, Lmiui/date/Holidays;->xp:Ljava/util/HashMap;

    const-string v1, ""

    const/4 v2, 0x7

    new-array v2, v2, [[I

    new-array v3, v8, [I

    const/16 v4, 0x65

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v4, v3, v6

    aput-object v3, v2, v7

    new-array v3, v8, [I

    const/16 v4, 0xd6

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [I

    const/16 v4, 0x134

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v4, v3, v6

    aput-object v3, v2, v8

    new-array v3, v8, [I

    const/16 v4, 0x138

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v4, v3, v6

    aput-object v3, v2, v9

    new-array v3, v8, [I

    const/16 v4, 0x191

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v4, v3, v6

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v4, v8, [I

    const/16 v5, 0x1f5

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v8, [I

    const/16 v5, 0x4c9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lmiui/date/Holidays;->xp:Ljava/util/HashMap;

    const-string v1, "CN"

    const/16 v2, 0xd

    new-array v2, v2, [[I

    new-array v3, v8, [I

    const/16 v4, 0x65

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v4, v3, v6

    aput-object v3, v2, v7

    new-array v3, v8, [I

    const/16 v4, 0xd6

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [I

    const/16 v4, 0x134

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v4, v3, v6

    aput-object v3, v2, v8

    new-array v3, v8, [I

    const/16 v4, 0x138

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v4, v3, v6

    aput-object v3, v2, v9

    new-array v3, v8, [I

    const/16 v4, 0x191

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v4, v3, v6

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v4, v8, [I

    const/16 v5, 0x1f5

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v8, [I

    const/16 v5, 0x1f8

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_chinese_youth_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v8, [I

    const/16 v5, 0x259

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_childrens_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v8, [I

    const/16 v5, 0x2bd

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_partys_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v8, [I

    const/16 v5, 0x321

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_armys_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v8, [I

    const/16 v5, 0x38e

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_teachers_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v8, [I

    const/16 v5, 0x3e9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_national_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v8, [I

    const/16 v5, 0x4c9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lmiui/date/Holidays;->xp:Ljava/util/HashMap;

    const-string v1, "TW"

    const/16 v2, 0x12

    new-array v2, v2, [[I

    new-array v3, v8, [I

    const/16 v4, 0x65

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v4, v3, v6

    aput-object v3, v2, v7

    new-array v3, v8, [I

    const/16 v4, 0xd6

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [I

    const/16 v4, 0xe4

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_peace_day:I

    aput v4, v3, v6

    aput-object v3, v2, v8

    new-array v3, v8, [I

    const/16 v4, 0x134

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v4, v3, v6

    aput-object v3, v2, v9

    new-array v3, v8, [I

    const/16 v4, 0x138

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v4, v3, v6

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v4, v8, [I

    const/16 v5, 0x13a

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_anti_aggression_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v8, [I

    const/16 v5, 0x149

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_tw_youth_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v8, [I

    const/16 v5, 0x191

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v8, [I

    const/16 v5, 0x194

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_tw_childrens_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v8, [I

    const/16 v5, 0x1f5

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v8, [I

    const/16 v5, 0x2cb

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_anniversary_of_lifting_martial_law:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v8, [I

    const/16 v5, 0x387

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_armed_forces_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v8, [I

    const/16 v5, 0x3a0

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_teachers_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-array v4, v8, [I

    const/16 v5, 0x3f2

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_national_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-array v4, v8, [I

    const/16 v5, 0x400

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_united_nations_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xf

    new-array v4, v8, [I

    const/16 v5, 0x401

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_retrocession_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x10

    new-array v4, v8, [I

    const/16 v5, 0x458

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_national_father_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x11

    new-array v4, v8, [I

    const/16 v5, 0x4c9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lmiui/date/Holidays;->xp:Ljava/util/HashMap;

    const-string v1, "HK"

    const/4 v2, 0x7

    new-array v2, v2, [[I

    new-array v3, v8, [I

    const/4 v4, -0x1

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_easter_day:I

    aput v4, v3, v6

    aput-object v3, v2, v7

    new-array v3, v8, [I

    const/16 v4, 0x65

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [I

    const/16 v4, 0xd6

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v4, v3, v6

    aput-object v3, v2, v8

    new-array v3, v8, [I

    const/16 v4, 0x1f5

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v4, v3, v6

    aput-object v3, v2, v9

    new-array v3, v8, [I

    const/16 v4, 0x2bd

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_hksar_establishment_day:I

    aput v4, v3, v6

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v4, v8, [I

    const/16 v5, 0x3e9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_national_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v8, [I

    const/16 v5, 0x4c9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Lmiui/date/Holidays$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/date/Holidays$a;-><init>(Lmiui/date/Holidays$1;)V

    sput-object v0, Lmiui/date/Holidays;->p:Lmiui/util/SoftReferenceSingleton;

    .line 120
    new-instance v0, Lmiui/date/Holidays$1;

    invoke-direct {v0}, Lmiui/date/Holidays$1;-><init>()V

    invoke-static {v0, v6}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiui/date/Holidays;->xm:Lmiui/util/Pools$Pool;

    .line 215
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lmiui/date/Holidays;->xt:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/miui/internal/util/DeviceHelper;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/date/Holidays;-><init>(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lmiui/date/Holidays;->nq:Landroid/content/res/Resources;

    .line 146
    invoke-direct {p0, p1}, Lmiui/date/Holidays;->v(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/date/Holidays;-><init>(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Lmiui/date/Holidays$1;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lmiui/date/Holidays;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/date/Holidays;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lmiui/date/Holidays;->v(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bU()Lmiui/util/SoftReferenceSingleton;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lmiui/date/Holidays;->p:Lmiui/util/SoftReferenceSingleton;

    return-object v0
.end method

.method public static getDefault()Lmiui/date/Holidays;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lmiui/date/Holidays;->p:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Holidays;

    return-object v0
.end method

.method private v(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/date/Holidays;->xr:Ljava/lang/String;

    .line 151
    const-string v0, "CN"

    iget-object v1, p0, Lmiui/date/Holidays;->xr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HK"

    iget-object v1, p0, Lmiui/date/Holidays;->xr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TW"

    iget-object v1, p0, Lmiui/date/Holidays;->xr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmiui/date/Holidays;->xs:Z

    .line 152
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final getEasterDayOfYear(I)I
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/16 v9, 0xa

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v8, 0x9

    .line 224
    sget-object v0, Lmiui/date/Holidays;->xt:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 225
    if-nez v0, :cond_0

    .line 226
    invoke-static {p1, v2}, Lmiui/date/Calendar;->e(II)I

    move-result v0

    and-int/lit16 v3, v0, 0xff

    .line 227
    sget-object v0, Lmiui/date/Holidays;->xm:Lmiui/util/Pools$Pool;

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    move v1, p1

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    move-result-object v1

    .line 229
    invoke-virtual {v1, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    const/16 v3, 0xf

    if-ge v0, v3, :cond_1

    .line 230
    invoke-virtual {v1, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0xf

    .line 240
    :goto_0
    invoke-virtual {v1, v8, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 242
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_1
    invoke-virtual {v1, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    sget-object v2, Lmiui/date/Holidays;->xm:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v1}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 268
    sget-object v1, Lmiui/date/Holidays;->xt:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    :cond_0
    return v0

    .line 232
    :cond_1
    invoke-virtual {v1}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    invoke-static {p1}, Lmiui/date/Calendar;->w(I)I

    move-result v0

    .line 237
    :goto_2
    invoke-virtual {v1, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 235
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    invoke-static {p1, v0}, Lmiui/date/Calendar;->d(II)I

    move-result v0

    goto :goto_2

    .line 244
    :pswitch_0
    const/4 v0, 0x7

    invoke-virtual {v1, v8, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 247
    :pswitch_1
    const/4 v0, 0x6

    invoke-virtual {v1, v8, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 250
    :pswitch_2
    invoke-virtual {v1, v8, v10}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 253
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {v1, v8, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 256
    :pswitch_4
    const/4 v0, 0x3

    invoke-virtual {v1, v8, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 259
    :pswitch_5
    invoke-virtual {v1, v8, v2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 262
    :pswitch_6
    const/4 v0, 0x1

    invoke-virtual {v1, v8, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getHolidayName(Lmiui/date/Calendar;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 169
    sget-object v0, Lmiui/date/Holidays;->xp:Ljava/util/HashMap;

    iget-object v2, p0, Lmiui/date/Holidays;->xr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 170
    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lmiui/date/Holidays;->xp:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 175
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x64

    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 177
    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .line 178
    aget v6, v5, v1

    packed-switch v6, :pswitch_data_0

    .line 185
    aget v6, v5, v1

    if-ne v6, v3, :cond_1

    .line 186
    iget-object v0, p0, Lmiui/date/Holidays;->nq:Landroid/content/res/Resources;

    aget v1, v5, v8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_1
    return-object v0

    .line 180
    :pswitch_0
    invoke-virtual {p1, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lmiui/date/Holidays;->getEasterDayOfYear(I)I

    move-result v6

    if-ne v3, v6, :cond_1

    .line 181
    iget-object v0, p0, Lmiui/date/Holidays;->nq:Landroid/content/res/Resources;

    aget v1, v5, v8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 177
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_2
    iget-boolean v0, p0, Lmiui/date/Holidays;->xs:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v0

    if-nez v0, :cond_4

    .line 193
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x64

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 194
    sget-object v3, Lmiui/date/Holidays;->xq:[[I

    .line 195
    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 196
    aget v6, v5, v1

    packed-switch v6, :pswitch_data_1

    .line 203
    invoke-virtual {p1}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v6

    if-nez v6, :cond_3

    .line 204
    aget v6, v5, v1

    if-ne v2, v6, :cond_3

    .line 205
    iget-object v0, p0, Lmiui/date/Holidays;->nq:Landroid/content/res/Resources;

    aget v1, v5, v8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 198
    :pswitch_1
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Lmiui/date/Calendar;->v(I)I

    move-result v6

    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 199
    iget-object v0, p0, Lmiui/date/Holidays;->nq:Landroid/content/res/Resources;

    aget v1, v5, v8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 195
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 212
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 178
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 196
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch
.end method
