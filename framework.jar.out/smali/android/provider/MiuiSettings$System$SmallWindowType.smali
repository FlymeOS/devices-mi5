.class public final enum Landroid/provider/MiuiSettings$System$SmallWindowType;
.super Ljava/lang/Enum;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmallWindowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/MiuiSettings$System$SmallWindowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/provider/MiuiSettings$System$SmallWindowType;

.field public static final enum A1_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

.field public static final enum A7_LATTICE:Landroid/provider/MiuiSettings$System$SmallWindowType;

.field public static final enum B7_FULL:Landroid/provider/MiuiSettings$System$SmallWindowType;

.field public static final enum X7_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1842
    new-instance v0, Landroid/provider/MiuiSettings$System$SmallWindowType;

    const-string v1, "X7_STYLE"

    invoke-direct {v0, v1, v2}, Landroid/provider/MiuiSettings$System$SmallWindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->X7_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    new-instance v0, Landroid/provider/MiuiSettings$System$SmallWindowType;

    const-string v1, "A1_STYLE"

    invoke-direct {v0, v1, v3}, Landroid/provider/MiuiSettings$System$SmallWindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->A1_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    new-instance v0, Landroid/provider/MiuiSettings$System$SmallWindowType;

    const-string v1, "A7_LATTICE"

    invoke-direct {v0, v1, v4}, Landroid/provider/MiuiSettings$System$SmallWindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->A7_LATTICE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    new-instance v0, Landroid/provider/MiuiSettings$System$SmallWindowType;

    const-string v1, "B7_FULL"

    invoke-direct {v0, v1, v5}, Landroid/provider/MiuiSettings$System$SmallWindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->B7_FULL:Landroid/provider/MiuiSettings$System$SmallWindowType;

    .line 1841
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/provider/MiuiSettings$System$SmallWindowType;

    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->X7_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->A1_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->A7_LATTICE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->B7_FULL:Landroid/provider/MiuiSettings$System$SmallWindowType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->$VALUES:[Landroid/provider/MiuiSettings$System$SmallWindowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1841
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/provider/MiuiSettings$System$SmallWindowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1841
    const-class v0, Landroid/provider/MiuiSettings$System$SmallWindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$System$SmallWindowType;

    return-object v0
.end method

.method public static values()[Landroid/provider/MiuiSettings$System$SmallWindowType;
    .locals 1

    .prologue
    .line 1841
    sget-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->$VALUES:[Landroid/provider/MiuiSettings$System$SmallWindowType;

    invoke-virtual {v0}, [Landroid/provider/MiuiSettings$System$SmallWindowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/MiuiSettings$System$SmallWindowType;

    return-object v0
.end method
