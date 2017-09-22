.class Lcom/android/vendorsettings/Q;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic bH:Lcom/android/vendorsettings/O;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/O;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/vendorsettings/Q;->bH:Lcom/android/vendorsettings/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/Q;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/V;Lcom/android/vendorsettings/V;)I
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/vendorsettings/Q;->sCollator:Ljava/text/Collator;

    invoke-static {p1}, Lcom/android/vendorsettings/V;->b(Lcom/android/vendorsettings/V;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/vendorsettings/V;->b(Lcom/android/vendorsettings/V;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 175
    check-cast p1, Lcom/android/vendorsettings/V;

    check-cast p2, Lcom/android/vendorsettings/V;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/Q;->a(Lcom/android/vendorsettings/V;Lcom/android/vendorsettings/V;)I

    move-result v0

    return v0
.end method
