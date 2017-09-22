.class public final Lcom/android/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I

.field public static final IconIndicator:[I

.field public static final IconListPreference:[I

.field public static final ListPreference:[I

.field public static final RecyclerView:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 2139
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010004

    aput v2, v0, v1

    sput-object v0, Lcom/android/camera/R$styleable;->CameraPreference:[I

    .line 2168
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/R$styleable;->IconIndicator:[I

    .line 2207
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/R$styleable;->IconListPreference:[I

    .line 2270
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/R$styleable;->ListPreference:[I

    .line 2351
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/R$styleable;->RecyclerView:[I

    return-void

    .line 2168
    nop

    :array_0
    .array-data 4
        0x7f01000a
        0x7f01000b
    .end array-data

    .line 2207
    :array_1
    .array-data 4
        0x7f01000a
        0x7f01000c
        0x7f01000d
        0x7f01000e
    .end array-data

    .line 2270
    :array_2
    .array-data 4
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
    .end array-data

    .line 2351
    :array_3
    .array-data 4
        0x10100c4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data
.end method
