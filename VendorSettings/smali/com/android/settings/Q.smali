.class Lcom/android/settings/Q;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic bH:Lcom/android/settings/O;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings/O;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/Q;->bH:Lcom/android/settings/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Q;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/V;Lcom/android/settings/V;)I
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/Q;->sCollator:Ljava/text/Collator;

    invoke-static {p1}, Lcom/android/settings/V;->b(Lcom/android/settings/V;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings/V;->b(Lcom/android/settings/V;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 175
    check-cast p1, Lcom/android/settings/V;

    check-cast p2, Lcom/android/settings/V;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/Q;->a(Lcom/android/settings/V;Lcom/android/settings/V;)I

    move-result v0

    return v0
.end method
