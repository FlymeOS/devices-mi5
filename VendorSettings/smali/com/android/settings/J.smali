.class Lcom/android/settings/J;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field br:Ljava/text/Collator;

.field final synthetic bs:Lcom/android/settings/I;


# direct methods
.method constructor <init>(Lcom/android/settings/I;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/J;->bs:Lcom/android/settings/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/J;->br:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/L;Lcom/android/settings/L;)I
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/J;->br:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/android/settings/L;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/settings/L;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 160
    check-cast p1, Lcom/android/settings/L;

    check-cast p2, Lcom/android/settings/L;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/J;->a(Lcom/android/settings/L;Lcom/android/settings/L;)I

    move-result v0

    return v0
.end method
