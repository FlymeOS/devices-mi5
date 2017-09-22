.class final Lcom/android/b/a/b;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a/b;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/b/a/o;Lcom/android/b/a/o;)I
    .locals 3

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/b/a/b;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/b/a/o;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1305
    check-cast p1, Lcom/android/b/a/o;

    check-cast p2, Lcom/android/b/a/o;

    invoke-virtual {p0, p1, p2}, Lcom/android/b/a/b;->a(Lcom/android/b/a/o;Lcom/android/b/a/o;)I

    move-result v0

    return v0
.end method
