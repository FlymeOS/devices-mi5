.class public Lcom/android/vendorsettings/search/a;
.super Ljava/lang/Object;
.source "BaseSearchIndexProvider.java"

# interfaces
.implements Lcom/android/vendorsettings/search/l;


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/search/a;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/vendorsettings/search/a;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method
