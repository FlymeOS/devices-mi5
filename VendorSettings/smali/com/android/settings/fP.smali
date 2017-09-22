.class Lcom/android/settings/fP;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic vh:Lcom/android/settings/fO;


# direct methods
.method constructor <init>(Lcom/android/settings/fO;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings/fP;->vh:Lcom/android/settings/fO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fP;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/fU;Lcom/android/settings/fU;)I
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/fP;->sCollator:Ljava/text/Collator;

    invoke-static {p1}, Lcom/android/settings/fU;->b(Lcom/android/settings/fU;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings/fU;->b(Lcom/android/settings/fU;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 151
    check-cast p1, Lcom/android/settings/fU;

    check-cast p2, Lcom/android/settings/fU;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fP;->a(Lcom/android/settings/fU;Lcom/android/settings/fU;)I

    move-result v0

    return v0
.end method
