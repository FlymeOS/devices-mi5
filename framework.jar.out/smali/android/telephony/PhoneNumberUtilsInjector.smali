.class Landroid/telephony/PhoneNumberUtilsInjector;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C
    .param p2, "pos"    # I

    .prologue
    .line 14
    if-nez p2, :cond_1

    const/16 v1, 0x2b

    if-ne p1, v1, :cond_1

    .line 19
    :cond_0
    :goto_0
    return-void

    .line 15
    :cond_1
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 16
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static containsCountryCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v5

    .line 49
    :cond_1
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "codes":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 51
    .local v1, "code":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 52
    const/4 v5, 0x1

    goto :goto_0

    .line 50
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "ps":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 110
    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 97
    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_1
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "values":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move-object p1, v4

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "defaultType":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "cdmaType":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 104
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v6

    const-string/jumbo v7, "gsm.current.phone-type"

    invoke-virtual {v6, v2, v7, v1}, Lmiui/telephony/TelephonyManagerEx;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "phoneType":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    aget-object v6, v5, v2

    if-eqz v6, :cond_0

    aget-object p1, v5, v2

    goto :goto_0

    .line 103
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x31

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 59
    if-ne p1, v0, :cond_1

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_b

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_b

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_0

    .line 67
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x35

    if-eq v1, v2, :cond_0

    .line 69
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x37

    if-eq v1, v2, :cond_0

    .line 71
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_0

    .line 73
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_0

    .line 75
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x35

    if-eq v1, v2, :cond_0

    .line 77
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_0

    .line 79
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_9

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_0

    .line 81
    :cond_9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_a

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_0

    .line 83
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_b

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_0

    .line 88
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static matchBrazilSuccess(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "alen"    # I
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "blen"    # I

    .prologue
    .line 25
    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "br"

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtilsInjector;->containsCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeBrazilCarrierCodeAndPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 35
    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "br"

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtilsInjector;->containsCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 42
    .end local p0    # "a":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 38
    .restart local p0    # "a":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
